package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.Candidate;
import com.jeeseatallocation.entity.Preference;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PreferenceRepository extends JpaRepository<Preference, Long> {

    List<Preference> findByCandidateOrderByPriorityAsc(Candidate candidate);

    List<Preference> findByCandidateIdOrderByPriorityAsc(Long candidateId);
}
