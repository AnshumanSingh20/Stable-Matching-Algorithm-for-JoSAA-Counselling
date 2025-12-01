package com.jeeseatallocation.entity;

import com.jeeseatallocation.enums.CategoryType;
import com.jeeseatallocation.enums.GenderType;
import com.jeeseatallocation.enums.PwDType;
import jakarta.persistence.*;

@Entity
public class Candidate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Integer rank;

    private String homeState;

    @Enumerated(EnumType.STRING)
    private CategoryType category;

    @Enumerated(EnumType.STRING)
    private PwDType pwdStatus;

    @Enumerated(EnumType.STRING)
    private GenderType gender;

    public Candidate() {}

    // getters / setters

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public Integer getRank() { return rank; }
    public void setRank(Integer rank) { this.rank = rank; }

    public String getHomeState() { return homeState; }
    public void setHomeState(String homeState) { this.homeState = homeState; }

    public CategoryType getCategory() { return category; }
    public void setCategory(CategoryType category) { this.category = category; }

    public PwDType getPwdStatus() { return pwdStatus; }
    public void setPwdStatus(PwDType pwdStatus) { this.pwdStatus = pwdStatus; }

    public GenderType getGender() { return gender; }
    public void setGender(GenderType gender) { this.gender = gender; }

    @Override
    public String toString() {
        return "Candidate{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", rank=" + rank +
                ", homeState='" + homeState + '\'' +
                ", category=" + category +
                ", pwdStatus=" + pwdStatus +
                ", gender=" + gender +
                '}';
    }
}
