package com.hello.service.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hello/v1")
public class HelloServiceController {
	
	@GetMapping("/sayHello")
	public String helloWorld() {
		return "Hello All, Welcome to the Rest API world";
	}

}
