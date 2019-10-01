package com.sms.curriculum.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sms.base.BaseController;
import com.sms.curriculum.model.Curriculum;
import com.sms.curriculum.service.CurriculumService;
import com.sms.model.Student;

@Controller
@RequestMapping("curriculum")
public class CurriculumController extends BaseController {
	
	@Autowired
	private CurriculumService curriculumService;
	
	@RequestMapping(value="view")
	public String listEmployees(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Curriculum curr) {
		model.addAttribute("students", curriculumService.viewCurriculum(curr));
		return "studentList";
	}
}
