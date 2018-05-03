package com.cws.moneykeeper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cws.moneykeeper.dao.FuncRoleDao;
import com.cws.moneykeeper.model.FuncRole;
import com.cws.moneykeeper.service.FuncRoleService;

@Service(value = "functionService")
@Transactional
public class FuncRoleImpl implements FuncRoleService {
	// region -- Fields --

	@Autowired
	private FuncRoleDao funcRoleDao;

	// end

	@Override
	public List<FuncRole> search1() {
		List<FuncRole> res = funcRoleDao.search1();
		return res;
	}
}