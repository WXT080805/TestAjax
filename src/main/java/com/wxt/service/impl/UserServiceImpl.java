package com.wxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxt.dao.UserMapper;
import com.wxt.model.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	/**
	 * 获取全部用户信息
	 */
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.getAllUser();
	}

}
