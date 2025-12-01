package com.jeeseatallocation.controller;

import com.jeeseatallocation.entity.Allocation;
import com.jeeseatallocation.entity.AllocationHistory;
import com.jeeseatallocation.repository.AllocationHistoryRepository;
import com.jeeseatallocation.repository.AllocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class AllocationController {

    @Autowired
    private AllocationRepository allocationRepository;

    @Autowired
    private AllocationHistoryRepository allocationHistoryRepository;

    // ---------------------------------------------------------
    // Show all current allocations
    // ---------------------------------------------------------
    @GetMapping("/allocations")
    public String listAllocations(Model model) {
        List<Allocation> allocations = allocationRepository.findAll();
        model.addAttribute("allocations", allocations);
        return "allocations/list";
    }

    // ---------------------------------------------------------
    // Show round-wise history
    // ---------------------------------------------------------
    @GetMapping("/allocations/round/{round}")
    public String viewRoundResults(@PathVariable int round, Model model) {

        List<AllocationHistory> history =
                allocationHistoryRepository.findByRoundNumber(round);

        model.addAttribute("round", round);
        model.addAttribute("history", history);

        return "allocations/round-results";
    }
}
