package com.sms.controller;
		
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.base.BaseController;
import com.sms.service.StudentService;
	
@Controller
public class MainController extends BaseController{
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
		return "welcome";
	}
	
}

