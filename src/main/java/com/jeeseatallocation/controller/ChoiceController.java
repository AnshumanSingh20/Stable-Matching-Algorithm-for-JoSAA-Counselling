package com.jeeseatallocation.controller;

import com.jeeseatallocation.entity.Allocation;
import com.jeeseatallocation.entity.Candidate;
import com.jeeseatallocation.repository.AllocationRepository;
import com.jeeseatallocation.repository.CandidateRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/choice")
public class ChoiceController {

    private final AllocationRepository allocationRepo;
    private final CandidateRepository candidateRepo;

    public ChoiceController(AllocationRepository allocationRepo,
                            CandidateRepository candidateRepo) {
        this.allocationRepo = allocationRepo;
        this.candidateRepo = candidateRepo;
    }

    // Show the choice form
    @GetMapping("/{candidateId}")
    public String getChoiceForm(@PathVariable Long candidateId, Model model) {

        Candidate candidate = candidateRepo.findById(candidateId).orElseThrow();

        Allocation allocation =
                allocationRepo.findTopByCandidateOrderByRoundNumberDesc(candidate);

        model.addAttribute("candidate", candidate);
        model.addAttribute("allocation", allocation);

        return "choice/form";
    }

    // Save the choice
    @PostMapping("/submit")
    public String submitChoice(@RequestParam Long allocationId,
                               @RequestParam String choiceType) {

        Allocation a = allocationRepo.findById(allocationId).orElseThrow();
        a.setChoiceType(choiceType);

        allocationRepo.save(a);

        return "redirect:/allocations/";
    }
}
