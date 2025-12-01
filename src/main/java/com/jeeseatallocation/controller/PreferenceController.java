package com.jeeseatallocation.controller;

import com.jeeseatallocation.entity.Candidate;
import com.jeeseatallocation.entity.Preference;
import com.jeeseatallocation.entity.Branch;
import com.jeeseatallocation.repository.CandidateRepository;
import com.jeeseatallocation.repository.PreferenceRepository;
import com.jeeseatallocation.repository.BranchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/preferences")
public class PreferenceController {

    @Autowired
    private PreferenceRepository preferenceRepository;

    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private BranchRepository branchRepository;

    // List preferences of a candidate
    @GetMapping("/candidate/{candidateId}")
    public String listPreferences(@PathVariable Long candidateId, Model model) {
        Candidate candidate = candidateRepository.findById(candidateId).orElse(null);
        if (candidate == null) {
            return "redirect:/candidates";
        }

        List<Preference> preferences =
                preferenceRepository.findByCandidateOrderByPriorityAsc(candidate);

        model.addAttribute("candidate", candidate);
        model.addAttribute("preferences", preferences);
        return "preferences/list";
    }

    // Add a new preference
    @GetMapping("/candidate/{candidateId}/new")
    public String newPreference(@PathVariable Long candidateId, Model model) {
        Candidate candidate = candidateRepository.findById(candidateId).orElse(null);
        if (candidate == null) {
            return "redirect:/candidates";
        }

        List<Branch> branches = branchRepository.findAll();

        Preference preference = new Preference();
        preference.setCandidate(candidate);

        model.addAttribute("preference", preference);
        model.addAttribute("branches", branches);
        model.addAttribute("candidate", candidate);

        return "preferences/new";
    }

    // Save preference
    @PostMapping("/save")
    public String savePreference(@ModelAttribute Preference preference) {

        // ensure priority is not null
        if (preference.getPriority() == null) {
            preference.setPriority(1);
        }

        preferenceRepository.save(preference);

        return "redirect:/preferences/candidate/" + preference.getCandidate().getId();
    }

    // Delete a preference
    @GetMapping("/delete/{id}")
    public String deletePreference(@PathVariable Long id) {
        Preference pref = preferenceRepository.findById(id).orElse(null);
        if (pref != null) {
            preferenceRepository.delete(pref);
            return "redirect:/preferences/candidate/" + pref.getCandidate().getId();
        }
        return "redirect:/candidates";
    }
}
