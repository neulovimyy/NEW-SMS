package com.sms.controller;
		
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
import com.sms.enums.AcademicAttainment;
import com.sms.enums.BloodTypeEnum;
import com.sms.enums.CivilStatusEnum;
import com.sms.enums.Religion;
import com.sms.enums.Gender;
import com.sms.model.Student;
import com.sms.model.Subject;
import com.sms.service.StudentService;
	
@Controller
@RequestMapping("student")
public class StudentController extends BaseController{
	
	@Autowired
	private StudentService studentService;
	
	private Map<Integer, String> genderList;
	private Map<Integer, String> bloodtypeList;
	private Map<Integer, String> religionList;
	private Map<Integer, String> civilStatusList;
	private Map<Integer, String> educAttainment;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "save", method = RequestMethod.GET)
	public void saveEmployee(@ModelAttribute("command") 
			Student cstudent, ModelMap map,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Student> students =  (List<Student>) studentService.getAll(Student.class);
		map.put("students", students);
		studentService.addStudent(cstudent);
		response.sendRedirect("students");
	}

	@RequestMapping(value="students", method = RequestMethod.GET)
	public String listEmployees(HttpServletRequest request, ModelMap model) {
		model.put("students", studentService.getAll(Student.class));
		return "studentList";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addEmployee(HttpServletRequest request,@ModelAttribute("command")  Student cstudent, ModelMap model) {
		
		initModel(model);
		return "addStudent";
	}
	/*
	@RequestMapping(value = "sss", method = RequestMethod.POST) 
	public String sss (ModelMap model) {
		return "sss";
	}
	*/
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addNewEmployee(HttpServletRequest request,@ModelAttribute("command")  Student cstudent, ModelMap model) {
		String acad = request.getParameter("acad");
		model.addAttribute("acad", acad);
		initModel(model);
		return "addStudent";
	}
	
	@RequestMapping(value = "apply", method = RequestMethod.GET)
	public String apply (HttpServletRequest request,@ModelAttribute("command") ModelMap model, BindingResult result) {
		model.addAttribute("acadAttainment", getAcadAttainment());
		return "iapply";
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
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String welcome() {
		return "index";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public void deleteEmployee(@ModelAttribute("command") Student student, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		studentService.delete(student);

		model.put("stud", null);
		model.put("students",  studentService.getAll(Student.class));
		response.sendRedirect("students");
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String editEmployee(@ModelAttribute("command")  Student student, 
			BindingResult result, ModelMap model) {
		Student obj = studentService.get(Student.class, student.getId());
		model.addAttribute("students", studentService.get(Student.class,student.getId()));
		model.addAttribute("students",  studentService.getAll(Student.class));
		model.addAttribute("command",obj);
		
		initModel(model);
		return "addStudent";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "savesubject", method = RequestMethod.POST)
	public void saveSubject(@ModelAttribute("command") 
			Subject subject, ModelMap map, HttpServletResponse response) throws IOException {
		
		List<Subject> subjects =  (List<Subject>) studentService.getAll(Subject.class);
		map.put("subjects", subjects);
		studentService.addSubject(subject);
		response.sendRedirect("subjects");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "addsubject", method = RequestMethod.GET)
	public String addSubject(@ModelAttribute("command")  Subject subject, ModelMap model, HttpServletResponse response) throws IOException {
		List<Subject> subjects =  (List<Subject>) studentService.getAll(Subject.class);
		
		model.put("subjects", subjects);
		return "addSubjects";
	}
	
	@RequestMapping(value="subjects", method = RequestMethod.GET)
	public String listSubject(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		return "subjectList";
	}
	
	@RequestMapping(value = "editsubject", method = RequestMethod.GET)
	public String editSubject(@ModelAttribute("command")  Subject subject, 
			BindingResult result, ModelMap model) {
		Subject obj = studentService.get(Subject.class, subject.getSubjectId());
		model.addAttribute("subjects", studentService.get(Subject.class,subject.getSubjectId()));
		model.addAttribute("subjects",  studentService.getAll(Subject.class));
		model.addAttribute("command",obj);
		
		return "addSubject";
	}
	
	@RequestMapping(value = "deletesubject", method = RequestMethod.GET)
	public void deleteSubject(@ModelAttribute("command") Subject subject, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		studentService.deleteSubject(subject);
		model.put("sub", null);
		model.put("subject",  studentService.getAll(Subject.class));
		response.sendRedirect("students");
	}
	
	private void initModel(ModelMap model) {
		model.addAttribute("genderList", getGenderList()); 
		model.addAttribute("bloodtypeList", getBloodTypeList()); 
		model.addAttribute("religionList", getReligionList());
		model.addAttribute("civilStatusList", getCivilStatusList());
	}

	public Map<Integer, String> getGenderList() {
		if (com.sms.util.InventoryUtility.isNull(genderList)) {
			genderList = new HashMap<Integer, String>();
			for (Gender value : Gender.values()) {
				genderList.put(value.getId(), value.getDescription());
			}
		}

		return genderList;
	}
	
	public Map<Integer, String> getBloodTypeList() {
		if (com.sms.util.InventoryUtility.isNull(bloodtypeList)) {
			bloodtypeList = new HashMap<Integer, String>();
			for (BloodTypeEnum value : BloodTypeEnum.values()) {
				bloodtypeList.put(value.getId(), value.getDescription());
			}
		}
		return bloodtypeList;
	}
	
	public Map<Integer, String> getReligionList() {
		if (com.sms.util.InventoryUtility.isNull(religionList)) {
			religionList = new HashMap<Integer, String>();
			for (Religion value : Religion.values()) {
				religionList.put(value.getId(), value.getDescription());
			}
		}
		return religionList;
	}
	
	public Map<Integer, String> getCivilStatusList() {
		if (com.sms.util.InventoryUtility.isNull(civilStatusList)) {
			civilStatusList = new HashMap<Integer, String>();
			for (CivilStatusEnum value : CivilStatusEnum.values()) {
				civilStatusList.put(value.getId(), value.getDescription());
			}
		}
		return civilStatusList;
	}
}