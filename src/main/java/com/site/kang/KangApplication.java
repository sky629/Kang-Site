package com.site.kang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAutoConfiguration
public class KangApplication {

	public static void main(String[] args) {
		SpringApplication.run(KangApplication.class, args);
	}
}
