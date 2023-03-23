package com.nexmotion.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

  @Bean
  public SecurityFilterChain filterChan(HttpSecurity http) throws Exception {
    
    http.authorizeRequests()
        .antMatchers("/**.do").permitAll()
        .antMatchers("/**").permitAll().and()
        .csrf()
        .disable();

    return http.build();
  }
}
