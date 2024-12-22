package com.fiotech.restful.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.fiotech.restful.entity.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
}