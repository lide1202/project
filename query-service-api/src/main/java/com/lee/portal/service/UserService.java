package com.lee.portal.service;

import java.util.List;

import com.lee.portal.po.UserPO;
import com.lee.query.service.BaseService;

public interface UserService extends BaseService<UserPO,String>{
	public List<UserPO> list(UserPO userPO);
}
