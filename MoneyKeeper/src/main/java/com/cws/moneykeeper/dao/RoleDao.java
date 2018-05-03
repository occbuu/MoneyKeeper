package com.cws.moneykeeper.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.cws.moneykeeper.model.Role;

public interface RoleDao extends CrudRepository<Role, Integer> {
	@Query("FROM Role")
	public List<Role> search1();
}