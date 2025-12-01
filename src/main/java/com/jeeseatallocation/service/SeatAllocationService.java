package com.jeeseatallocation.service;

import com.jeeseatallocation.entity.*;
import com.jeeseatallocation.enums.CategoryType;
import com.jeeseatallocation.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Comparator;
import java.util.List;

@Service
public class SeatAllocationService {

    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private PreferenceRepository preferenceRepository;

    @Autowired
    private AllocationRepository allocationRepository;

    @Autowired
    private SeatCapacityRepository seatCapacityRepository;

    @Autowired
    private AllocationHistoryRepository allocationHistoryRepository;

    @Transactional
    public void runAllocationRound(int roundNumber) {

        // 1) get all candidates ordered by rank asc
        List<Candidate> candidates = candidateRepository.findAll()
                .stream()
                .sorted(Comparator.comparingInt(c -> c.getRank() == null ? Integer.MAX_VALUE : c.getRank()))
                .toList();

        for (Candidate candidate : candidates) {

            // get last allocation if any
            Allocation existing = allocationRepository.findTopByCandidateOrderByRoundNumberDesc(candidate);

            if (existing != null) {
                // try upgrade (respects choiceType)
                tryUpgradeAllocation(candidate, roundNumber);
                continue;
            }

            // fresh allocation (round 1 or no previous seat)
            allocateFresh(candidate, roundNumber);
        }
    }

    private void allocateFresh(Candidate candidate, int roundNumber) {
        List<Preference> prefs = preferenceRepository.findByCandidateOrderByPriorityAsc(candidate);
        if (prefs == null || prefs.isEmpty()) return;

        CategoryType cat = candidate.getCategory() == null ? CategoryType.OPEN : candidate.getCategory();

        for (Preference p : prefs) {
            Branch branch = p.getBranch();
            if (branch == null) continue;

            SeatCapacity cap = seatCapacityRepository.findByBranchAndCategory(branch, cat);
            if (cap == null) continue;

            long filled = allocationRepository.countByBranchAndCategoryAssignedAndRoundNumber(branch, cat, roundNumber);

            if (filled < (cap.getSeats() == null ? 0 : cap.getSeats())) {
                // allocate
                Allocation alloc = new Allocation();
                alloc.setCandidate(candidate);
                alloc.setBranch(branch);
                alloc.setRoundNumber(roundNumber);
                alloc.setPreferencePriority(p.getPriority() == null ? Integer.MAX_VALUE : p.getPriority());
                alloc.setCategoryAssigned(cat);
                alloc.setChoiceType("FLOAT"); // default

                allocationRepository.save(alloc);

                saveHistory(candidate, branch, roundNumber, alloc.getPreferencePriority(), "NEW");
                return;
            }
        }
    }

    private Allocation tryUpgradeAllocation(Candidate candidate, int roundNumber) {

        Allocation prev = allocationRepository.findTopByCandidateOrderByRoundNumberDesc(candidate);
        if (prev == null) return null;

        // if frozen, keep it
        if ("FREEZE".equalsIgnoreCase(prev.getChoiceType())) {
            saveHistory(candidate, prev.getBranch(), roundNumber, prev.getPreferencePriority(), "FROZEN");
            // replicate previous as same round entry so allocation listing for round shows something
            Allocation same = new Allocation();
            same.setCandidate(candidate);
            same.setBranch(prev.getBranch());
            same.setRoundNumber(roundNumber);
            same.setPreferencePriority(prev.getPreferencePriority());
            same.setCategoryAssigned(prev.getCategoryAssigned());
            same.setChoiceType(prev.getChoiceType());
            allocationRepository.save(same);
            return same;
        }

        List<Preference> prefs = preferenceRepository.findByCandidateOrderByPriorityAsc(candidate);
        if (prefs == null || prefs.isEmpty()) {
            // copy previous
            Allocation copy = new Allocation();
            copy.setCandidate(candidate);
            copy.setBranch(prev.getBranch());
            copy.setRoundNumber(roundNumber);
            copy.setPreferencePriority(prev.getPreferencePriority());
            copy.setCategoryAssigned(prev.getCategoryAssigned());
            copy.setChoiceType(prev.getChoiceType());
            allocationRepository.save(copy);
            saveHistory(candidate, prev.getBranch(), roundNumber, prev.getPreferencePriority(), "UNCHANGED");
            return copy;
        }

        CategoryType cat = candidate.getCategory() == null ? CategoryType.OPEN : candidate.getCategory();
        Branch prevBranch = prev.getBranch();
        int prevPref = prev.getPreferencePriority();
        String choice = prev.getChoiceType();

        for (Preference p : prefs) {
            // only consider strictly better preferences (smaller priority number)
            if (p.getPriority() == null) continue;
            if (prevPref <= 0) continue;
            if (p.getPriority() >= prevPref) continue;

            Branch target = p.getBranch();
            if (target == null) continue;

            // SLIDE: allow only within same college
            if ("SLIDE".equalsIgnoreCase(choice)) {
                if (prevBranch == null || target.getCollege() == null || prevBranch.getCollege() == null) {
                    continue;
                }
                if (!target.getCollege().getId().equals(prevBranch.getCollege().getId())) {
                    continue;
                }
            }

            // check seat capacity for candidate's category
            SeatCapacity cap = seatCapacityRepository.findByBranchAndCategory(target, cat);
            if (cap == null) continue;

            long filled = allocationRepository.countByBranchAndCategoryAssignedAndRoundNumber(target, cat, roundNumber);
            if (filled < (cap.getSeats() == null ? 0 : cap.getSeats())) {
                // allocate upgraded seat
                Allocation upgraded = new Allocation();
                upgraded.setCandidate(candidate);
                upgraded.setBranch(target);
                upgraded.setRoundNumber(roundNumber);
                upgraded.setPreferencePriority(p.getPriority());
                upgraded.setCategoryAssigned(cat);
                upgraded.setChoiceType("FLOAT");
                allocationRepository.save(upgraded);

                saveHistory(candidate, target, roundNumber, p.getPriority(), "UPGRADED");
                return upgraded;
            }
        }

        // if no upgrade possible, copy previous allocation for this round
        Allocation same = new Allocation();
        same.setCandidate(candidate);
        same.setBranch(prevBranch);
        same.setRoundNumber(roundNumber);
        same.setPreferencePriority(prev.getPreferencePriority());
        same.setCategoryAssigned(prev.getCategoryAssigned());
        same.setChoiceType(prev.getChoiceType());
        allocationRepository.save(same);
        saveHistory(candidate, prevBranch, roundNumber, prev.getPreferencePriority(), "UNCHANGED");
        return same;
    }

    private void saveHistory(Candidate candidate, Branch branch, int round, int priority, String status) {
        AllocationHistory h = new AllocationHistory();
        h.setCandidate(candidate);
        h.setBranch(branch);
        h.setRoundNumber(round);
        h.setPreferencePriority(priority);
        h.setStatus(status);
        h.setAllocationDetails("Category: " + (candidate.getCategory() == null ? "OPEN" : candidate.getCategory().name()));
        allocationHistoryRepository.save(h);
    }
}
