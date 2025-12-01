package com.jeeseatallocation.controller;

import com.jeeseatallocation.entity.College;
import com.jeeseatallocation.repository.CollegeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/colleges")
public class CollegeController {

    private final CollegeRepository collegeRepository;

    public CollegeController(CollegeRepository collegeRepository) {
        this.collegeRepository = collegeRepository;
    }

    @GetMapping("/")
    public String list(Model model) {
        model.addAttribute("colleges", collegeRepository.findAll());
        return "colleges/list";
    }

    @GetMapping("/new")
    public String newCollege(Model model) {
        model.addAttribute("college", new College());
        return "colleges/new";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute College college) {
        collegeRepository.save(college);
        return "redirect:/colleges/";
    }
}
