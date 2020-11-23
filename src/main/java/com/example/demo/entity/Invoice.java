package com.example.demo.entity;

import javax.persistence.*;
import java.sql.Date;


public class Invoice {

    long invoice_id;
    private int supplierid;

    private Date date;
    private Integer amount;
    Item a;
    Item b;


    public Invoice() {
    }

    public long getInvoice_id() {
        return invoice_id;
    }

    public void setInvoice_id(long invoice_id) {
        this.invoice_id = invoice_id;
    }

    public int getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(int supplierid) {
        this.supplierid = supplierid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Item getA() {
        return a;
    }

    public void setA(Item a) {
        this.a = a;
    }

    public Item getB() {
        return b;
    }

    public void setB(Item b) {
        this.b = b;
    }
}
