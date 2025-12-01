package com.jeeseatallocation.entity;

import com.jeeseatallocation.enums.CategoryType;
import jakarta.persistence.*;

@Entity
public class Allocation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Candidate candidate;

    @ManyToOne
    private Branch branch;

    private int roundNumber;

    private int preferencePriority;

    @Enumerated(EnumType.STRING)
    private CategoryType categoryAssigned;

    // FREEZE / FLOAT / SLIDE
    private String choiceType;

    public Allocation() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Candidate getCandidate() { return candidate; }
    public void setCandidate(Candidate candidate) { this.candidate = candidate; }

    public Branch getBranch() { return branch; }
    public void setBranch(Branch branch) { this.branch = branch; }

    public int getRoundNumber() { return roundNumber; }
    public void setRoundNumber(int roundNumber) { this.roundNumber = roundNumber; }

    public int getPreferencePriority() { return preferencePriority; }
    public void setPreferencePriority(int preferencePriority) { this.preferencePriority = preferencePriority; }

    public CategoryType getCategoryAssigned() { return categoryAssigned; }
    public void setCategoryAssigned(CategoryType categoryAssigned) { this.categoryAssigned = categoryAssigned; }

    public String getChoiceType() { return choiceType; }
    public void setChoiceType(String choiceType) { this.choiceType = choiceType; }
}
