package com.example.rowmapper;

import com.example.demo.entity.Income_tax;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class IncomeTaxRowMapper implements RowMapper<Income_tax> {
    public Income_tax mapRow(ResultSet rs, int rn) throws SQLException {
        Income_tax i = new Income_tax();
        i.setAmount(rs.getInt("amount"));
        i.setDate(rs.getDate("date"));
        i.setIncome_tax_id(rs.getInt("income_tax_id"));
        i.setPenality(rs.getInt("penality"));
        i.setBalance_with_banks(rs.getInt("balance_with_banks"));
        i.setCash_in_hand(rs.getInt("cash_in_hand"));
        i.setFixed_assets(rs.getInt("fixed_assets"));
        i.setInventory(rs.getInt("inventory"));
        i.setLoans_and_advances(rs.getInt("loans_and_advances"));
        i.setOther_assets(rs.getInt("other_assets"));
        return i;
    }
}