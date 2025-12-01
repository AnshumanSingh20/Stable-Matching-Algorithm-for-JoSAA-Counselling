package com.jeeseatallocation.entity;

import jakarta.persistence.*;

@Entity
public class AllocationHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Candidate candidate;

    @ManyToOne
    private Branch branch;

    private int roundNumber;

    // "NEW", "UPGRADED", "UNCHANGED", "FROZEN"
    private String status;

    private int preferencePriority;

    private String allocationDetails;

    public AllocationHistory() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Candidate getCandidate() { return candidate; }
    public void setCandidate(Candidate candidate) { this.candidate = candidate; }

    public Branch getBranch() { return branch; }
    public void setBranch(Branch branch) { this.branch = branch; }

    public int getRoundNumber() { return roundNumber; }
    public void setRoundNumber(int roundNumber) { this.roundNumber = roundNumber; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public int getPreferencePriority() { return preferencePriority; }
    public void setPreferencePriority(int preferencePriority) { this.preferencePriority = preferencePriority; }

    public String getAllocationDetails() { return allocationDetails; }
    public void setAllocationDetails(String allocationDetails) { this.allocationDetails = allocationDetails; }
}
