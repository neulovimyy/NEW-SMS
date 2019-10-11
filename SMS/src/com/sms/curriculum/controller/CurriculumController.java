package com.sms.curriculum.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.base.BaseController;
import com.sms.curriculum.model.Curriculum;
import com.sms.curriculum.service.CurriculumService;
import com.sms.util.InventoryUtility;

@Controller
@RequestMapping("dashboard/curriculum")
public class CurriculumController extends BaseController {
	
	@Autowired
	private CurriculumService curriculumService;
	
	@RequestMapping(value="/view")
	public String listEmployees(HttpServletRequest request, ModelMap model, @ModelAttribute("curriculumCommand") Curriculum curr) {
		model.addAttribute("curriculum", curriculumService.viewCurriculum(curr));
		return "viewCurriculum";
	}
	
	@RequestMapping(value="/form", method= {RequestMethod.GET})
	public String form(HttpServletRequest request, ModelMap model, @ModelAttribute("curriculumCommand") Curriculum curr,BindingResult result) {
		if(!InventoryUtility.isNull(curr.getId())){
			Curriculum obj = curriculumService.get(Curriculum.class, curr.getId()); 
			model.addAttribute("curriculumCommand", obj);
		}
		return "curriculumProfile";
	}
	
	@RequestMapping(value = "/save")
	public void saveUser(HttpServletRequest request,HttpServletResponse response,ModelMap model,@ModelAttribute("curriculumCommand") Curriculum curr) throws IOException {
		curriculumService.save(curr);
		response.sendRedirect(request.getContextPath() + "/institute/dashboard/curriculum/view");
	}
	
	@RequestMapping(value="/delete", method= {RequestMethod.GET})
	public void delete(HttpServletRequest request,HttpServletResponse response, ModelMap model, @ModelAttribute("curriculumCommand") Curriculum curr,BindingResult result) throws IOException {
		curriculumService.delete(Curriculum.class, curr.getId());
		response.sendRedirect(request.getContextPath() + "/curriculum/view");
	}
}
