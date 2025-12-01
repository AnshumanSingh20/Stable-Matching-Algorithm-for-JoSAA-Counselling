package com.jeeseatallocation.entity;

import com.jeeseatallocation.enums.CategoryType;
import jakarta.persistence.*;

@Entity
public class SeatCapacity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Branch branch;

    @Enumerated(EnumType.STRING)
    private com.jeeseatallocation.enums.CategoryType category;

    private Integer seats;

    public SeatCapacity() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Branch getBranch() { return branch; }
    public void setBranch(Branch branch) { this.branch = branch; }

    public com.jeeseatallocation.enums.CategoryType getCategory() { return category; }
    public void setCategory(com.jeeseatallocation.enums.CategoryType category) { this.category = category; }

    public Integer getSeats() { return seats; }
    public void setSeats(Integer seats) { this.seats = seats; }
}
