package com.lee.portal.service.impl;

import org.springframework.stereotype.Service;

import com.lee.commons.dao.BaseDao;
import com.lee.commons.service.BaseServiceImpl;
import com.lee.portal.dao.UserDao;
import com.lee.portal.po.UserPO;
import com.lee.portal.service.UserService;

@Service("userService")
public class UserServiceImpl  extends BaseServiceImpl<UserPO,String> implements UserService{

	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	protected BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return this.userDao;
	}

}
