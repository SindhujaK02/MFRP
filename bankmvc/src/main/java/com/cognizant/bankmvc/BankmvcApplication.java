package com.cognizant.bankmvc;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
@EnableDiscoveryClient
public class BankmvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(BankmvcApplication.class, args);
	}

}
