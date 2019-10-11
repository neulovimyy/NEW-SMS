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
import com.sms.model.Faculty;
import com.sms.model.Report;
import com.sms.model.Student;
import com.sms.model.Subject;
import com.sms.service.StudentService;

@Controller
@RequestMapping("records")
public class RecordController extends BaseController{
	@Autowired
	private StudentService studentService;
	private List<Student> student;
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String welcome() {
		return "landing";
		
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String welcome2() {
		return "index4";
		
	}
	/*
	@RequestMapping(value = "studInfo", method = RequestMethod.GET)
	public String studInfo(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Student student) {
		model.addAttribute("students", studentService.viewStudents(student));
		return "studInfo";
		
	} */
	
	@RequestMapping(value="index4",params="action1",method=RequestMethod.POST)
    public void action1(){
        System.out.println("Action1 block called");
        return;
    }
	
	@RequestMapping(params="index4",method=RequestMethod.POST)
    public void action2()
    {
        System.out.println("Action2 block called");
    }
	
	@RequestMapping(value = "studInfo")
	public String listEmployees(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Student student) {
		model.addAttribute("student", studentService.viewStudents(student));
		return "studInfo";
		
	}
	
	@RequestMapping(value = "studentSubjects", method = RequestMethod.GET)
	public String welcome1() {
		return "studentSubjects";
	}

		
	@RequestMapping(value = "elemRec", method = RequestMethod.GET)
	public String listStudent(HttpServletRequest request, ModelMap model) {
		student = studentService.listStudentss();
		model.put("student", studentService.getAll(Student.class));
		return "elementaryRecords";
	}
	
	@RequestMapping(value = "generate", method = RequestMethod.GET)
	public String generate() {
		return "generate";
	}
	
	@RequestMapping(value = "generateexcel", method = RequestMethod.GET)
	public String generateexcel() {
		return "generateexcel";
	}
	

	@RequestMapping(value = "enrollment", method = RequestMethod.GET)
	public String enroll() {
		return "enrollment";
	}
	
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String listReport(HttpServletRequest request, ModelMap model) {
		List<Report> report = studentService.listReportss();
		model.put("report", studentService.getAll(Report.class));
		return "list";
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
	
	@RequestMapping(value = "deletesubjectreport", method = RequestMethod.GET)
	public void deleteReport(@ModelAttribute("command") Report subject, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		studentService.deleteReport(subject);
		model.put("sub", null);
		model.put("subject",  studentService.getAll(Report.class));
		response.sendRedirect("students");
	}
	
	@RequestMapping(value="shsRec")
	public String listSubject(HttpServletRequest request, ModelMap model, @ModelAttribute("subjectCommand") Report subject) {
		model.addAttribute("report", studentService.viewSubjects(subject));
		return "shsRecords";
	} 
}
