package com.jeeseatallocation.entity;

import com.jeeseatallocation.enums.CategoryType;
import com.jeeseatallocation.enums.PwDType;
import com.jeeseatallocation.enums.GenderType;
import com.jeeseatallocation.enums.QuotaType;
import jakarta.persistence.*;

@Entity
public class BranchCapacity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    private Branch branch;

    @Enumerated(EnumType.STRING)
    private CategoryType category;

    @Enumerated(EnumType.STRING)
    private PwDType pwdType;

    @Enumerated(EnumType.STRING)
    private GenderType genderType;

    @Enumerated(EnumType.STRING)
    private QuotaType quotaType;

    private Integer capacity = 0;

    private Integer filledSeats = 0;

    public BranchCapacity() {}

    // getters / setters

    public Long getId() {
        return id;
    }

    public Branch getBranch() {
        return branch;
    }

    public CategoryType getCategory() {
        return category;
    }

    public PwDType getPwdType() {
        return pwdType;
    }

    public GenderType getGenderType() {
        return genderType;
    }

    public QuotaType getQuotaType() {
        return quotaType;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public Integer getFilledSeats() {
        return filledSeats;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    public void setCategory(CategoryType category) {
        this.category = category;
    }

    public void setPwdType(PwDType pwdType) {
        this.pwdType = pwdType;
    }

    public void setGenderType(GenderType genderType) {
        this.genderType = genderType;
    }

    public void setQuotaType(QuotaType quotaType) {
        this.quotaType = quotaType;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public void setFilledSeats(Integer filledSeats) {
        this.filledSeats = filledSeats;
    }

    public boolean hasVacancy() {
        return this.filledSeats < this.capacity;
    }

    public void occupyOneSeat() {
        if (this.filledSeats == null) this.filledSeats = 0;
        this.filledSeats = this.filledSeats + 1;
    }

    public void releaseOneSeat() {
        if (this.filledSeats == null || this.filledSeats <= 0) return;
        this.filledSeats = this.filledSeats - 1;
    }
}
