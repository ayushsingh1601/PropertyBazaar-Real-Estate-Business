package com.example.demo.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
// import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/filteritem**/**/**/**").permitAll()
                .antMatchers("/brand**/**/**","/supplier**/**","tax**/**/**","/exp**/**/**","/users**/**","customers**/**","/brand**/**","/adminrc","/filter**","/employee**/**/**","/invoice**/**/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/feedback**/**/**","/cart**/**/**","/rc","/checkout**/**").access("hasRole('ROLE_CLIENT')")
                // .antMatchers("/employee*").access("hasRole('ROLE_EMPLOYEE')")
                .antMatchers("customers**/**").access("hasRole('ROLE_EMPLOYEE')")

                .anyRequest().permitAll()
//                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login")
                .usernameParameter("username").passwordParameter("password")
                .and()
                .logout().logoutRequestMatcher(new AntPathRequestMatcher("/j_spring_security_logout")).logoutSuccessUrl("/logout")
                .deleteCookies("JSESSIONID")
                .clearAuthentication(true)
                .invalidateHttpSession(true)
                .and()
                .exceptionHandling().accessDeniedPage("/login")
                .and()
                .csrf().disable();
    }

    }


//	@Bean
//	@Override
//	protected UserDetailsService userDetailsService() {
//		
//		
//		List<UserDetails> users = new ArrayList<>();
//		users.add(User.withDefaultPasswordEncoder().username("navin").password("1234").roles("USER").build());
//		
//		
//		return new InMemoryUserDetailsManager(users);
//	}


