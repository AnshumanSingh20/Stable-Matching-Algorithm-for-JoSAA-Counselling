package com.jeeseatallocation.allocation;

import java.util.*;
/**
 * Adapts Gale–Shapley for multi-capacity branches.
 */
public class GaleShapleyAllocator {

    public static class AllocationResult {
        public Map<Long, Long> candidateToBranch = new HashMap<>();
    }

    public AllocationResult allocate(Map<Long, LinkedList<Long>> candidatePrefs,
                                     Map<Long, Integer> branchCapacities,
                                     Map<Long, Integer> candidateRanks) {
        AllocationResult result = new AllocationResult();

        Comparator<Long> rankComparator = (a, b) -> {
            int ra = candidateRanks.get(a);
            int rb = candidateRanks.get(b);
            if (ra != rb) return Integer.compare(ra, rb);
            return Long.compare(a, b);
        };

        Map<Long, TreeSet<Long>> branchAccepted = new HashMap<>();
        for (Long branchId : branchCapacities.keySet()) {
            branchAccepted.put(branchId, new TreeSet<>(rankComparator));
        }

        Queue<Long> free = new ArrayDeque<>();
        for (Long cand : candidatePrefs.keySet()) free.add(cand);

        while (!free.isEmpty()) {
            Long cand = free.poll();
            LinkedList<Long> prefs = candidatePrefs.get(cand);
            if (prefs == null || prefs.isEmpty()) continue;

            Long branch = prefs.pollFirst();
            TreeSet<Long> accepted = branchAccepted.get(branch);
            int capacity = branchCapacities.getOrDefault(branch, 1);

            if (accepted.size() < capacity) {
                accepted.add(cand);
                result.candidateToBranch.put(cand, branch);
            } else {
                Long worst = accepted.last();
                if (rankComparator.compare(cand, worst) < 0) {
                    accepted.remove(worst);
                    accepted.add(cand);
                    result.candidateToBranch.remove(worst);
                    result.candidateToBranch.put(cand, branch);
                    if (candidatePrefs.get(worst) != null && !candidatePrefs.get(worst).isEmpty()) {
                        free.add(worst);
                    }
                } else {
                    if (!prefs.isEmpty()) free.add(cand);
                }
            }
        }

        return result;
    }
}
