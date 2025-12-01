package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.Branch;
import com.jeeseatallocation.entity.SeatCapacity;
import com.jeeseatallocation.enums.CategoryType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SeatCapacityRepository extends JpaRepository<SeatCapacity, Long> {

    SeatCapacity findByBranchAndCategory(Branch branch, CategoryType category);

}
