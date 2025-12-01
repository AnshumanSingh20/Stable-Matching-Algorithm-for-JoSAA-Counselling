package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.AllocationHistory;
import com.jeeseatallocation.entity.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AllocationHistoryRepository extends JpaRepository<AllocationHistory, Long> {

    List<AllocationHistory> findByRoundNumber(int roundNumber);

    List<AllocationHistory> findByCandidateOrderByRoundNumberAsc(Candidate candidate);
}
