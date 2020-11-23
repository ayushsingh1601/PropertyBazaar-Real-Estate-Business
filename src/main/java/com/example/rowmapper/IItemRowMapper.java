package com.example.rowmapper;

import com.example.demo.entity.Brand;
import com.example.demo.entity.IItem;
import com.example.demo.entity.Item;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class IItemRowMapper implements RowMapper<IItem> {
    public IItem mapRow(ResultSet rs, int rn) throws SQLException {
        IItem i=new IItem();
        i.setItem_id(rs.getInt("item_id"));
        i.setQuantity(rs.getInt("quantity"));
        i.setCost_price(rs.getInt("cost_price"));

        return i;
    }
}