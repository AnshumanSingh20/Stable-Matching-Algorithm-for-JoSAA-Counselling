package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.Allocation;
import com.jeeseatallocation.entity.Branch;
import com.jeeseatallocation.entity.Candidate;
import com.jeeseatallocation.enums.CategoryType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AllocationRepository extends JpaRepository<Allocation, Long> {

    Allocation findTopByCandidateOrderByRoundNumberDesc(Candidate candidate);

    long countByBranchAndCategoryAssignedAndRoundNumber(Branch branch, CategoryType category, int roundNumber);
}
