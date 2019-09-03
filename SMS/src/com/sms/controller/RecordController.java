package com.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sms.base.BaseController;
import com.sms.model.Report;
import com.sms.service.StudentService;

@Controller
@RequestMapping("records")
public class RecordController extends BaseController{
	@Autowired
	private StudentService studentService;


	@RequestMapping(value="report", method = RequestMethod.GET)
	public String listReport(HttpServletRequest request, ModelMap model) {
		model.put("report", studentService.getAll(Report.class));
		return "index4";
	}
	
	@RequestMapping(value = "record", method = RequestMethod.GET)
	public String welcome() {
		return "landing";
	}
	
	
}
