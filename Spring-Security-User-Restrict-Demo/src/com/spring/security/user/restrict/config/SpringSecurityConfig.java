package com.spring.security.user.restrict.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter 
{

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception 
	{
		// TODO Auto-generated method stub
		
		UserBuilder user = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication().withUser(user.username("john").password("1234").roles("EMPLOYEE"));
		auth.inMemoryAuthentication().withUser(user.username("alex").password("1234").roles("MANAGER", "EMPLOYEE"));
		auth.inMemoryAuthentication().withUser(user.username("roman").password("1234").roles("CEO", "MANAGER", "EMPLOYEE"));
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception 
	{
		// TODO Auto-generated method stub
		
		http.authorizeRequests().antMatchers("/").hasRole("EMPLOYEE").and().formLogin().loginPage("/showLoginForm").loginProcessingUrl("/authenticateUser").permitAll().and().logout().permitAll().and().exceptionHandling().accessDeniedPage("/access-denied");
		
		http.authorizeRequests().antMatchers("/managers/**").hasRole("MANAGER").and().formLogin().loginPage("/showLoginForm").loginProcessingUrl("/authenticateUser").permitAll().and().logout().permitAll().and().exceptionHandling().accessDeniedPage("/access-denied");
		
		http.authorizeRequests().antMatchers("/ceos/**").hasRole("CEO").and().formLogin().loginPage("/showLoginForm").loginProcessingUrl("/authenticateUser").permitAll().and().logout().permitAll().and().exceptionHandling().accessDeniedPage("/access-denied");
		
	}

}
