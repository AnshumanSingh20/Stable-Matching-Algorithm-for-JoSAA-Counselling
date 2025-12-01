package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.College;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CollegeRepository extends JpaRepository<College, Long> {
}
