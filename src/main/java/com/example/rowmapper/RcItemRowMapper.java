package com.example.rowmapper;

import com.example.demo.entity.Reciept;
import com.example.demo.entity.Ritem;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RcItemRowMapper implements RowMapper<Ritem> {
    public Ritem mapRow(ResultSet rs, int rn) throws SQLException {
        Ritem r=new Ritem();
        r.setDiscount(rs.getInt("discount"));
        r.setItem_id(rs.getInt("item_id"));
        r.setMrp(rs.getInt("mrp"));
        r.setQuantity(rs.getInt("quantity"));
        r.setRid(rs.getInt("rid"));
        return r;

    }

    }