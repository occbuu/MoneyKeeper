package com.cws.moneykeeper.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cws.moneykeeper.service.RoleService;

@RestController
@RequestMapping("/Role")
public class RoleController {
	// region -- Fields --

	@Autowired
	private RoleService roleService;

	// end

}