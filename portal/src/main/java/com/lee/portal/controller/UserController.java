package com.lee.portal.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lee.portal.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired() 
	@Qualifier("userService")
	private UserService userService;
	
	
	/**
	 * @RequestMapping("/list")时http://localhost:8080/portal/user/list.(do|html|jsp)
	 * @RequestMapping("/list.do")时http://localhost:8080/portal/user/list.do
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view=new ModelAndView("user/list");
		view.addObject("mess", "user freemarker test 测试测试");
		return view;
		
	}
}