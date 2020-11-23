package com.example.demo.auth;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;

@Configuration
public class AuthProviderConfig {
    @Bean(name = "dataSource")
    public DriverManagerDataSource dataSource()
    {
        DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
        driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
        driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/dbb?useSSL=false");
        driverManagerDataSource.setUsername("hello");
        driverManagerDataSource.setPassword("world");
        return driverManagerDataSource;
    }

    @Bean(name="userDetailsService")
    public UserDetailsService userDetailsService(){
        JdbcDaoImpl jdbcImpl = new JdbcDaoImpl();
        jdbcImpl.setDataSource(dataSource());
        jdbcImpl.setUsersByUsernameQuery("select username,password,active from user where username=?");
        jdbcImpl.setAuthoritiesByUsernameQuery("select username,role from user where username=?");
        return jdbcImpl;
    }
}