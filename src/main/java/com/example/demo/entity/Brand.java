package com.example.demo.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


public class Brand {

    int brand_id;


    String brand_name;


    String logo;

    public Brand(@NotNull String brand_name, @NotNull String logo) {
        this.brand_name = brand_name;
        this.logo = logo;
    }

    public Brand() {
    }


    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
