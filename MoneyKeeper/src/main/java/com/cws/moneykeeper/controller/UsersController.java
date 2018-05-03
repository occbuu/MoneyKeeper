package com.cws.moneykeeper.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cws.moneykeeper.service.UsersService;

@RestController
@RequestMapping("/Users")
public class UsersController {
	// region -- Fields --

	@Autowired
	private UsersService usersService;

	// end

}