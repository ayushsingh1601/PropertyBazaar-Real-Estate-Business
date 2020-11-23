package com.example.demo.entity;

import com.example.demo.auth.User;

//@Entity
//@Table
public class Customer {
    //    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    int customer_id;
    int person_id;
    String username;
    Personal_info p;
    User u;

    public Customer(int customer_id, int person_id, String type) {
        this.customer_id = customer_id;
        this.person_id = person_id;
    }

    public Customer(int person_id, String username) {
        this.person_id = person_id;
        this.username = username;
    }

    public Customer() {
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getPerson_id() {
        return person_id;
    }

    public void setPerson_id(int person_id) {
        this.person_id = person_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Personal_info getP() {
        return p;
    }

    public void setP(Personal_info p) {
        this.p = p;
    }

    public User getU() {
        return u;
    }

    public void setU(User u) {
        this.u = u;
    }
}
