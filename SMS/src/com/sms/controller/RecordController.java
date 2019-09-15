package com.sms.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sms.base.BaseController;
import com.sms.model.Report;
import com.sms.model.Subject;
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
	

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String welcome() {
		return "landing";
	}
	
	@RequestMapping(value = "generate", method = RequestMethod.GET)
	public String generate() {
		return "generate";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "savesubjectreport", method = RequestMethod.POST)
	public void saveReport(@ModelAttribute("command") 
			Report subject, ModelMap map, HttpServletResponse response) throws IOException {
		
		List<Report> subjects =  (List<Report>) studentService.getAll(Report.class);
		map.put("subjectsdb", subjects);
		studentService.addReport(subject);
		response.sendRedirect("subjectsdb");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "addsubjectreport", method = RequestMethod.GET)
	public String addReport(@ModelAttribute("command")  Report subject, ModelMap model, HttpServletResponse response) throws IOException {
		List<Report> subjects =  (List<Report>) studentService.getAll(Report.class);
		
		model.put("subjectsdb", subjects);
		return "index4";
	}
	
	@RequestMapping(value = "deletesubjectreport", method = RequestMethod.GET)
	public void deleteReport(@ModelAttribute("command") Report subject, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		studentService.deleteReport(subject);
		model.put("sub", null);
		model.put("subject",  studentService.getAll(Report.class));
		response.sendRedirect("students");
	}
}
