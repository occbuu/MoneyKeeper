package com.cws.moneykeeper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cws.moneykeeper.dao.FunctionDao;
import com.cws.moneykeeper.model.Function;
import com.cws.moneykeeper.service.FunctionService;

@Service(value = "functionService")
@Transactional
public class FunctionImpl implements FunctionService {
	// region -- Fields --

	@Autowired
	private FunctionDao functionDao;

	// end

	@Override
	public List<Function> search1() {
		List<Function> res = functionDao.search1();
		return res;
	}
}