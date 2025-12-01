package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.Candidate;
import org.springframework.data.jpa.repository.*;
import java.util.*;

public interface CandidateRepository extends JpaRepository<Candidate, Long> {
    List<Candidate> findAllByOrderByRankAsc();
}
