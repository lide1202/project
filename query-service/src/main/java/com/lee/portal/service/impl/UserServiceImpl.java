package com.lee.portal.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.lee.dao.impl.BaseDao;
import com.lee.portal.dao.UserDao;
import com.lee.portal.po.UserPO;
import com.lee.portal.service.UserService;
import com.lee.query.service.impl.BaseServiceImpl;


@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<UserPO,String> implements UserService{

	Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired()
	@Qualifier("userDao")
	private UserDao userDao;
	

	@Override
	protected BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return this.userDao;
	}
	

	public List<UserPO> list(UserPO userPO){
		
		String loginname=userPO.getLoginname();
		String status=userPO.getStatus()!=null && userPO.getStatus()==true?"1":"0";
		int rowSize=userPO.getRowSize()==0?10:userPO.getRowSize();
		int pageNum=userPO.getPageNum()==0?1:userPO.getPageNum();
		
		int startRow=(pageNum-1)*rowSize;
				
		List<UserPO> userList=userDao.findByStatementPostfix(".select", new String[]{"loginname","status","rowSize","startRow"}, new Object[]{loginname,status,rowSize,startRow}, null, null);
		
		return userList;
		
		
	}
}
