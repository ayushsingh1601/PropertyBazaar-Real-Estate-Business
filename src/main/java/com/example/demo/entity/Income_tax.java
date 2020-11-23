package com.example.demo.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;


public class Income_tax {

    int income_tax_id;
    int penality;

    int amount;

    Date date;

    int fixed_assets;
    int loans_and_advances;
    int other_assets;
    int balance_with_banks;
    int cash_in_hand;
    int inventory;



    public Income_tax(int penality, @NotNull int amount, Date date) {
        this.penality = penality;
        this.amount = amount;
        this.date = date;
    }

    public Income_tax() {
    }

    public int getIncome_tax_id() {
        return income_tax_id;
    }

    public void setIncome_tax_id(int income_tax_id) {
        this.income_tax_id = income_tax_id;
    }

    public int getPenality() {
        return penality;
    }

    public void setPenality(int penality) {
        this.penality = penality;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getFixed_assets() {
        return fixed_assets;
    }

    public void setFixed_assets(int fixed_assets) {
        this.fixed_assets = fixed_assets;
    }

    public int getLoans_and_advances() {
        return loans_and_advances;
    }

    public void setLoans_and_advances(int loans_and_advances) {
        this.loans_and_advances = loans_and_advances;
    }

    public int getOther_assets() {
        return other_assets;
    }

    public void setOther_assets(int other_assets) {
        this.other_assets = other_assets;
    }

    public int getBalance_with_banks() {
        return balance_with_banks;
    }

    public void setBalance_with_banks(int balance_with_banks) {
        this.balance_with_banks = balance_with_banks;
    }

    public int getCash_in_hand() {
        return cash_in_hand;
    }

    public void setCash_in_hand(int cash_in_hand) {
        this.cash_in_hand = cash_in_hand;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }
}
