package it.polimi.hypermedia.backend.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("user")
                .password(new SpringBeans().passwordEncoder().encode("password")).roles("USER");
    }

    protected void configure(HttpSecurity security) throws Exception {
        security
                .cors().and().csrf().disable()
                .authorizeHttpRequests()
                .antMatchers(
                        "/api/v1/events/getAll",
                        "/api/v1/events/get",
                        "/api/v1/events/getUpcoming",
                        "/api/v1/itineraries/get",
                        "/api/v1/itineraries/getAll",
                        "/api/v1/points-of-interest/get",
                        "/api/v1/points-of-interest/getAll",
                        "/api/v1/services/get",
                        "/api/v1/services/getAll",
                        "/api/v1/tags/events/getAll",
                        "/api/v1/tags/itineraries/getAll",
                        "/api/v1/tags/points-of-interest/getAll",
                        "/api/v1/tags/services/getAll",
                        "/api/v1/search/search").permitAll()
                .anyRequest().authenticated()
                .and().httpBasic();
    }
}
