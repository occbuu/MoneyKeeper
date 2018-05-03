package com.cws.moneykeeper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cws.moneykeeper.dao.UsersDao;
import com.cws.moneykeeper.model.Users;
import com.cws.moneykeeper.service.UsersService;

@Service(value = "functionService")
@Transactional
public class UsersImpl implements UsersService {
	// region -- Fields --

	@Autowired
	private UsersDao usersDao;

	// end

	@Override
	public List<Users> search1() {
		List<Users> res = usersDao.search1();
		return res;
	}
}