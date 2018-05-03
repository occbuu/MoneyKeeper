package com.cws.moneykeeper.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.cws.moneykeeper.model.Function;

public interface FunctionDao extends CrudRepository<Function, Integer> {
	@Query("FROM Function")
	public List<Function> search1();
}