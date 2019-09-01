package com.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.base.BaseController;
import com.sms.model.Grades;
import com.sms.model.Student;
import com.sms.service.StudentService;


@Controller
@RequestMapping ("academic")

public class AcademicController extends BaseController
{

	@Autowired
	private StudentService studentService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveTransactions(@ModelAttribute("grades") Grades grade, ModelMap map) {
		List<Grades> grades =  (List<Grades>) studentService.getAll(Grades.class);
		map.put("grades", grades);
		studentService.save(grades);
		return "gradeTable";
	}
	
	@RequestMapping(value="encode", method = RequestMethod.GET)
	public String addTransactions(HttpServletRequest request, ModelMap model) {
		model.put("grades", studentService.getAll(Grades.class));
		return "encode";
	}
	
	@RequestMapping(value="edit", method = RequestMethod.GET)
	public String editTransactions(HttpServletRequest request, ModelMap model) {
		model.put("grades", studentService.getAll(Grades.class));
		return "gradeTable";
	}
	
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String transact() {
		return "index3";
	}
	
	@RequestMapping(value="show", method = RequestMethod.GET)
	public String showTransactions(HttpServletRequest request, ModelMap model) {
		model.put("student", studentService.getAll(Student.class));
		return "gradeTable";
	}
	

}
