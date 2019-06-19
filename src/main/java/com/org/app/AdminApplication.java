package com.org.app;

import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
@EntityScan(basePackageClasses = {
		AdminApplication.class,
		Jsr310JpaConverters.class
})
public class AdminApplication extends SpringBootServletInitializer  {

	
	   protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	        return application.sources(AdminApplication.class);
	    }
	    public static void main(String[] args) throws Exception {
	        SpringApplication.run(AdminApplication.class, args);
	    }
	    
	    @Bean
		public WebMvcConfigurer corsConfigurer() {
			return new WebMvcConfigurerAdapter() {
				@Override
				public void addCorsMappings(CorsRegistry registry) {
					applyFullCorsAllowedPolicy(registry);
				}
			};
		}
		public static void applyFullCorsAllowedPolicy(CorsRegistry registry) {
			  registry.addMapping("/**").allowCredentials(false).allowedOrigins("*").
			  allowedMethods("PUT", "POST", "GET", "OPTIONS", "DELETE");

		}
	    

	@PostConstruct
	void init() {
		TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
	}

}
