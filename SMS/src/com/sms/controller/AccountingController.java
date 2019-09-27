package com.sms.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sms.base.BaseController;
import com.sms.enums.AcademicAttainment;
import com.sms.enums.PaymentMethod;
import com.sms.model.ElemAndHS;
import com.sms.model.SHSAndCollege;
import com.sms.model.StudRetrieveInfo;
import com.sms.model.Student;
import com.sms.model.Subject;
import com.sms.service.StudentService;

@Controller
@RequestMapping("account")
public class AccountingController extends BaseController{	

	@Autowired
	private StudentService studentService;
	private Map<Integer, String> educAttainment;
	private Map<Integer, String> paymentMethod;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public void saveTransactions(@ModelAttribute("account") ElemAndHS account, ModelMap map, HttpServletResponse response) throws IOException {
		List<ElemAndHS> accounts =  (List<ElemAndHS>) studentService.getAll(ElemAndHS.class);
		map.put("accounts", accounts);
		studentService.save(account);
		response.sendRedirect("transaction");
	}
	
	@RequestMapping(value="transaction", method = RequestMethod.GET)
	public String listTransactionsGET(HttpServletRequest request, ModelMap model) {
		
		
		model.put("accounts", studentService.getAll(ElemAndHS.class));
		return "accountingTable";
	}
	
	@RequestMapping(value="transaction", method = RequestMethod.POST)
	public String listTransactionsPOST(HttpServletRequest request, ModelMap model) {
		String page = null;
		String level = request.getParameter("acad");
		System.out.println(level);
		switch(level) {
			case "elem":
				model.put("accounts", studentService.getAll(ElemAndHS.class));
				page = "accountingTable";
				break;
			case "hs":
				model.put("accounts", studentService.getAll(ElemAndHS.class));
				page = "accountingTable";
				break;
			case "shs":
				model.put("accounts", studentService.getAll(SHSAndCollege.class));
				page = "accountingTable2";
				break;
			case "college":
				model.put("accounts", studentService.getAll(SHSAndCollege.class));
				page = "accountingTable2";
				break;
		}
		
		return page;
	}
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addTransactions(@ModelAttribute("account")  ElemAndHS account, ModelMap model) {
		List<ElemAndHS> accounts =  (List<ElemAndHS>) studentService.getAll(ElemAndHS.class);
		
		model.addAttribute("paymentMethod", getPaymentMethod());
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
	public String editTransactions(@ModelAttribute("account") ElemAndHS account, 
			BindingResult result, ModelMap model, HttpServletRequest request) {
		
		Long id = Long.parseLong(request.getParameter("id"));
		ElemAndHS obj = studentService.get(ElemAndHS.class, id);
		model.addAttribute("accounts", studentService.get(ElemAndHS.class,id));
		model.addAttribute("accounts",  studentService.getAll(ElemAndHS.class));
		model.addAttribute("account",obj);
		return "elemAndHS";
	}
	
	@RequestMapping(value = "level", method = RequestMethod.GET)
	public String level (HttpServletRequest request,@ModelAttribute("command") ModelMap model, BindingResult result) {
		model.addAttribute("acadAttainment", getAcadAttainment());
		return "selectLevel";
	}
	
	public Map<Integer, String> getAcadAttainment() {
		if (com.sms.util.InventoryUtility.isNull(educAttainment)) {
			educAttainment = new HashMap<Integer, String>();
			for (AcademicAttainment value : AcademicAttainment.values()) {
				educAttainment.put(value.getId(), value.getDescription());
			}
		}
			return educAttainment;
		}
	
	public Map<Integer, String> getPaymentMethod() {
		if (com.sms.util.InventoryUtility.isNull(paymentMethod)) {
			paymentMethod = new HashMap<Integer, String>();
			for (PaymentMethod value : PaymentMethod.values()) {
				paymentMethod.put(value.getId(), value.getDescription());
			}
		}
			return paymentMethod;
		}
	
	@SuppressWarnings("unchecked")
	@ModelAttribute("account")
	@RequestMapping(value = "save1", method = RequestMethod.POST)
	public void saveTransactions1( StudRetrieveInfo account, ModelMap map, HttpServletResponse response) throws IOException {
		List<StudRetrieveInfo> accounts =  (List<StudRetrieveInfo>) studentService.getAll(ElemAndHS.class);
		map.put("accounts", accounts);
		studentService.save(account);
		response.sendRedirect("transaction1");
	}
	
	@RequestMapping(value="transaction1", method = RequestMethod.GET)
	public String listTransactions1GET(HttpServletRequest request, ModelMap model,@ModelAttribute("studentAccount") StudRetrieveInfo stud) {
		model.addAttribute("accounts", studentService.viewStudentsByStudentID(stud));
		return "studentList";
	}
	
	
	@RequestMapping(value="transaction1", method = RequestMethod.POST)
	public String listTransactions1POST(HttpServletRequest request, ModelMap model,@ModelAttribute("studentAccount") StudRetrieveInfo stud) {
		model.addAttribute("accounts", studentService.viewStudentsByStudentID(stud));
		return "studentList";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add1", method = RequestMethod.GET)
	public String addTransactions(@ModelAttribute("account")  StudRetrieveInfo account, ModelMap model) {
		List<StudRetrieveInfo> accounts =  (List<StudRetrieveInfo>) studentService.getAll(StudRetrieveInfo.class);
		
		model.put("accounts", accounts);
		return "studRetrieveInfo";
	}
	
	@RequestMapping(value = "home1", method = RequestMethod.GET)
	public String transact1() {
		return "index3";
	}
	
	@RequestMapping(value = "delete1", method = RequestMethod.GET)
	public String deleteTransactions(@ModelAttribute("account") StudRetrieveInfo account, ModelMap model) {
		studentService.delete(account);

		model.put("account", null);
		model.put("accounts",  studentService.getAll(StudRetrieveInfo.class));
		return "accountingTable1";
	}
	
	@RequestMapping(value = "edit1", method = RequestMethod.GET)
	public String editTransactions(@ModelAttribute("account") StudRetrieveInfo account, 
			BindingResult result, ModelMap model, HttpServletRequest request) {
		
		Long id = Long.parseLong(request.getParameter("id"));
		StudRetrieveInfo obj = studentService.get(StudRetrieveInfo.class, id);
		model.addAttribute("accounts", studentService.get(StudRetrieveInfo.class,id));
		model.addAttribute("accounts",  studentService.getAll(StudRetrieveInfo.class));
		model.addAttribute("account",obj);
		return "studRetrieveInfo";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save2", method = RequestMethod.POST)
	public void save2Transactions(@ModelAttribute("account") SHSAndCollege account, ModelMap map, HttpServletResponse response) throws IOException {
		List<SHSAndCollege> accounts =  (List<SHSAndCollege>) studentService.getAll(SHSAndCollege.class);
		map.put("accounts", accounts);
		studentService.save(account);
		response.sendRedirect("transaction2");
	}
	
	@RequestMapping(value="transaction2", method = RequestMethod.GET)
	public String list2Transactions2GET(HttpServletRequest request, ModelMap model) {
		model.put("accounts", studentService.getAll(SHSAndCollege.class));
		return "accountingTable2";
	}
	
	@RequestMapping(value="transaction2", method = RequestMethod.POST)
	public String list2Transactions2POST(HttpServletRequest request, ModelMap model) {
		model.put("accounts", studentService.getAll(SHSAndCollege.class));
		return "accountingTable2";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add2", method = RequestMethod.GET)
	public String addTransactions2(@ModelAttribute("account")  SHSAndCollege account, ModelMap model) {
		List<SHSAndCollege> accounts =  (List<SHSAndCollege>) studentService.getAll(SHSAndCollege.class);
		
		model.put("accounts", accounts);
		return "shsAndCollege";
	}
	
	@RequestMapping(value = "home2", method = RequestMethod.GET)
	public String transact2() {
		return "index2";
	}
	
	@RequestMapping(value = "delete2", method = RequestMethod.GET)
	public void delete2Transactions2(@ModelAttribute("account") SHSAndCollege account, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		studentService.delete(account);

		model.put("account", null);
		model.put("accounts",  studentService.getAll(SHSAndCollege.class));
		response.sendRedirect("transaction2");
	}
	
	@RequestMapping(value = "edit2", method = RequestMethod.GET)
	public String edit2Transactions2(@ModelAttribute("account") SHSAndCollege account, 
			BindingResult result, ModelMap model, HttpServletRequest request) {
		
		Long id = Long.parseLong(request.getParameter("id"));
		SHSAndCollege obj = studentService.get(SHSAndCollege.class, id);
		model.addAttribute("accounts", studentService.get(SHSAndCollege.class,id));
		model.addAttribute("accounts",  studentService.getAll(SHSAndCollege.class));
		model.addAttribute("account",obj);
		return "shsAndCollege";
	}
	
	@RequestMapping(value="assess", method = RequestMethod.GET)
	public String AssessGET(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		model.put("accounts", studentService.getAll(SHSAndCollege.class));
		return "assessCollegeSHS";
	}
	
	@RequestMapping(value="assess", method = RequestMethod.POST)
	public String AssessPOST(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		model.put("accounts", studentService.getAll(SHSAndCollege.class));
		return "assessCollegeSHS";
	}
	
	
	@RequestMapping(value="assess1", method = RequestMethod.GET)
	public String Assess1GET(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		model.put("accounts", studentService.getAll(ElemAndHS.class));
		return "assessElemHS";
	}
	
	@RequestMapping(value="assess1", method = RequestMethod.POST)
	public String Assess1POST(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		model.put("accounts", studentService.getAll(ElemAndHS.class));
		return "assessElemHS";
	}
	
	
	@RequestMapping(value= "search", method= RequestMethod.GET)
	public String search() {
		return "search";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "searchresult", method = RequestMethod.GET)
	public String searchResult(@ModelAttribute("command") Student student, HttpServletRequest request, ModelMap model) {
		List<StudRetrieveInfo> info = (List<StudRetrieveInfo>) studentService.getAccountStudentID(StudRetrieveInfo.class,request.getParameter("search"));
		model.put("accounts", info);
		return "searchResult";
	}
}
