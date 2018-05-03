package com.cws.moneykeeper.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.cws.moneykeeper.model.FuncRole;

public interface FuncRoleDao extends CrudRepository<FuncRole, Integer> {
	@Query("FROM FuncRole a WHERE a.idParent = 0")
	public List<FuncRole> search1();
}