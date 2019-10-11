package com.sms.curriculum.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

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
import com.sms.curriculum.model.CurriculumPath;
import com.sms.curriculum.service.CurriculumService;
import com.sms.util.InventoryUtility;

@Controller
@RequestMapping("dashboard/path")
public class PathController extends BaseController {

@Autowired
private CurriculumService curriculumService;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/view")
	public String listEmployees(HttpServletRequest request, ModelMap model,
			@ModelAttribute("curriculumCommand") CurriculumPath curr, BindingResult result) {
		Long id = Long.parseLong(request.getParameter("id"));
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("path.id", id);
		List<CurriculumPath> li = (List<CurriculumPath>) curriculumService.getAllByHashMap(CurriculumPath.class, map);

		model.addAttribute("path", li);
		model.addAttribute("pathid", id);
		return "viewCurriculumPath";
	}

	@RequestMapping(value = "/form", method = { RequestMethod.GET })
	public String form(HttpServletRequest request, ModelMap model,
			@ModelAttribute("curriculumCommand") CurriculumPath curr, BindingResult result) {
		if (!InventoryUtility.isNull(curr.getId())) {
			CurriculumPath obj = curriculumService.get(CurriculumPath.class, curr.getId());
			model.addAttribute("curriculumCommand", obj);
			model.addAttribute("pathid", Long.parseLong(request.getParameter("pathid")));
		}
		return "pathProfile";
	}

	@RequestMapping(value = "/save")
	public void saveUser(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute("curriculumCommand") CurriculumPath curr) throws IOException {
		curriculumService.save(curr);
		response.sendRedirect(request.getContextPath() + "/path/view?id=" + curr.getPath().getId());
	}

	@RequestMapping(value = "/delete", method = { RequestMethod.GET })
	public void delete(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute("curriculumCommand") CurriculumPath curr, BindingResult result) throws IOException {
		curriculumService.delete(Curriculum.class, curr.getId());
		response.sendRedirect(request.getContextPath() + "/path/view");
	}
}
