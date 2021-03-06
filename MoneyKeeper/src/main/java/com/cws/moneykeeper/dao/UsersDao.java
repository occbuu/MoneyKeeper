package com.cws.moneykeeper.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.cws.moneykeeper.model.Users;

public interface UsersDao extends CrudRepository<Users, Integer> {
	@Query("FROM Users")
	public List<Users> search1();
}