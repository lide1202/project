package com.lee.portal.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lee.portal.po.UserPO;
import com.lee.portal.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController{

	@Autowired() 
	@Qualifier("userService")
	private UserService userService;
	
	/**
	 * @RequestMapping("/list")时http://localhost:8080/portal/user/list.(do|html|jsp|ajax)
	 * @RequestMapping("/list.html")时http://localhost:8080/portal/user/list.html
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/list.html")
	public ModelAndView list(HttpServletRequest request,HttpServletResponse response,UserPO userPO){
		
		ModelAndView view=new ModelAndView("user/list");
		
		List<UserPO> userList=userService.list(userPO);
		view.addObject("userList", userList);
	
		return view;
		
	}
}
