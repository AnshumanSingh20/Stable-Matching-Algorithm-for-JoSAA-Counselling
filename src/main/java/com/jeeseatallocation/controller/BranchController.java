package com.jeeseatallocation.controller;

import com.jeeseatallocation.entity.Branch;
import com.jeeseatallocation.entity.College;
import com.jeeseatallocation.repository.BranchRepository;
import com.jeeseatallocation.repository.CollegeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/branches")
public class BranchController {

    private final BranchRepository branchRepo;
    private final CollegeRepository collegeRepo;

    public BranchController(BranchRepository branchRepo, CollegeRepository collegeRepo) {
        this.branchRepo = branchRepo;
        this.collegeRepo = collegeRepo;
    }

    @GetMapping("/")
    public String list(Model model) {
        model.addAttribute("branches", branchRepo.findAll());
        return "branches/list";
    }

    @GetMapping("/new")
    public String newBranch(Model model) {
        model.addAttribute("branch", new Branch());
        model.addAttribute("colleges", collegeRepo.findAll());
        return "branches/new";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute Branch branch, @RequestParam Long collegeId) {
        College college = collegeRepo.findById(collegeId).orElseThrow();
        branch.setCollege(college);
        branchRepo.save(branch);
        return "redirect:/branches/";
    }
}
