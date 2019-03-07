package com.wxt.dao;

import java.util.List;

import com.wxt.model.User;

public interface UserMapper {
	//获取全部用户信息
	List<User> getAllUser();
}
