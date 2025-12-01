package com.jeeseatallocation.controller;

import com.jeeseatallocation.service.SeatAllocationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final SeatAllocationService seatAllocationService;

    public AdminController(SeatAllocationService seatAllocationService) {
        this.seatAllocationService = seatAllocationService;
    }

    @GetMapping("/run-round/{round}")
    @ResponseBody
    public String runRoundGet(@PathVariable int round) {
        seatAllocationService.runAllocationRound(round);
        return "Round " + round + " allocation completed (GET).";
    }

    @PostMapping("/run-round/{round}")
    @ResponseBody
    public String runRoundPost(@PathVariable int round) {
        seatAllocationService.runAllocationRound(round);
        return "Round " + round + " allocation completed (POST).";
    }
}
