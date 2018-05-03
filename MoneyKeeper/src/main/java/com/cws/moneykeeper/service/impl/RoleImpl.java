package com.cws.moneykeeper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cws.moneykeeper.dao.RoleDao;
import com.cws.moneykeeper.model.Role;
import com.cws.moneykeeper.service.RoleService;

@Service(value = "functionService")
@Transactional
public class RoleImpl implements RoleService {
	// region -- Fields --

	@Autowired
	private RoleDao roleDao;

	// end

	@Override
	public List<Role> search1() {
		List<Role> res = roleDao.search1();
		return res;
	}
}