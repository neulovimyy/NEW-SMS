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
import com.sms.model.ElemAndHS;
import com.sms.service.StudentService;

@Controller
@RequestMapping("account")
public class AccountingController extends BaseController{

	@Autowired
	private StudentService studentService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveTransactions(@ModelAttribute("account") ElemAndHS account, ModelMap map) {
		List<ElemAndHS> accounts =  (List<ElemAndHS>) studentService.getAll(ElemAndHS.class);
		map.put("accounts", accounts);
		studentService.save(account);
		return "accountingTable";
	}
	
	@RequestMapping(value="transaction", method = RequestMethod.GET)
	public String listTransactions(HttpServletRequest request, ModelMap model) {
		model.put("accounts", studentService.getAll(ElemAndHS.class));
		return "accountingTable";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addTransactions(@ModelAttribute("account")  ElemAndHS account, ModelMap model) {
		List<ElemAndHS> accounts =  (List<ElemAndHS>) studentService.getAll(ElemAndHS.class);
		
		model.put("accounts", accounts);
		return "elemAndHS";
	}
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String transact() {
		return "index2";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String deleteTransactions(@ModelAttribute("account") ElemAndHS account, ModelMap model) {
		studentService.delete(account);

		model.put("account", null);
		model.put("accounts",  studentService.getAll(ElemAndHS.class));
		return "accountingTable";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String editTransactions(@ModelAttribute("account")  ElemAndHS account, 
			BindingResult result, ModelMap model) {
		ElemAndHS obj = studentService.get(ElemAndHS.class, account.getStudentNumber());
		model.addAttribute("accounts", studentService.get(ElemAndHS.class,account.getStudentNumber()));
		model.addAttribute("accounts",  studentService.getAll(ElemAndHS.class));
		model.addAttribute("account",obj);
		return "elemAndHS";
	}	
 
}
