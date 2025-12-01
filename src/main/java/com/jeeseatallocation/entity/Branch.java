package com.jeeseatallocation.entity;

import jakarta.persistence.*;

@Entity
public class Branch {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    // ADD THIS FIELD ↓↓↓↓↓✓
    private int capacity;

    @ManyToOne
    private College college;   // if you have College entity

    public Branch() {}

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    // GETTER ↓↓↓↓↓
    public int getCapacity() {
        return capacity;
    }

    public College getCollege() {
        return college;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    // SETTER ↓↓↓↓↓
    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public void setCollege(College college) {
        this.college = college;
    }
}
