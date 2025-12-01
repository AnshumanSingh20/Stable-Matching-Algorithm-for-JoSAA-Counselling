package com.jeeseatallocation.repository;

import com.jeeseatallocation.entity.Branch;
import com.jeeseatallocation.entity.BranchCapacity;
import com.jeeseatallocation.enums.CategoryType;
import com.jeeseatallocation.enums.PwDType;
import com.jeeseatallocation.enums.GenderType;
import com.jeeseatallocation.enums.QuotaType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BranchCapacityRepository extends JpaRepository<BranchCapacity, Long> {

    List<BranchCapacity> findByBranchAndCategoryAndPwdTypeAndGenderTypeAndQuotaType(
            Branch branch,
            CategoryType category,
            PwDType pwdType,
            GenderType genderType,
            QuotaType quotaType
    );

    // convenience: find any matching bucket for a branch with vacancy
    List<BranchCapacity> findByBranchAndCategoryAndQuotaTypeAndGenderTypeAndCapacityGreaterThan(
            Branch branch,
            CategoryType category,
            QuotaType quotaType,
            GenderType genderType,
            Integer capacityThreshold
    );
}
