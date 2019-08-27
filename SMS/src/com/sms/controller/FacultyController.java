package com.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.base.BaseController;
import com.sms.model.Faculty;
import com.sms.model.Student;
import com.sms.service.StudentService;

@Controller
@RequestMapping("faculty")
public class FacultyController extends BaseController{

	@Autowired
	private StudentService studentService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveFaculty(@ModelAttribute("faculty") 
			Faculty faculty, ModelMap map) {
		List<Faculty> faculties =  (List<Faculty>) studentService.getAll(Faculty.class);
		map.put("faculties", faculties);
		studentService.addFaculty(faculty);
		return "facultyList";
	}
	
	@RequestMapping(value="faculties", method = RequestMethod.GET)
	public String listFaculties(HttpServletRequest request, ModelMap model) {
		model.put("students", studentService.getAll(Faculty.class));
		return "facultyList";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addFaculty(@ModelAttribute("faculty")  Faculty faculty, ModelMap model) {
		List<Faculty> faculties =  (List<Faculty>) studentService.getAll(Faculty.class);
		
		model.put("faculties", faculties);
		return "addFaculty";
	}
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String welcome() {
		return "index3";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String deleteFaculty(@ModelAttribute("faculty") Faculty faculty, ModelMap model) {
		studentService.delete(faculty);

		model.put("faculties", null);
		model.put("faculties",  studentService.getAll(Faculty.class));
		return "facultyList";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String editFaculty(@ModelAttribute("faculty")  Faculty faculty, 
			BindingResult result, ModelMap model) {
		Faculty obj = studentService.get(Faculty.class, faculty.getFacultyId());
		model.addAttribute("students", studentService.get(Student.class,faculty.getFacultyId()));
		model.addAttribute("students",  studentService.getAll(Student.class));
		model.addAttribute("command",obj);
		return "addStudent";
	}	
	
}
