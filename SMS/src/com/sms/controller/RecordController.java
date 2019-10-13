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
import com.sms.model.College;
import com.sms.model.Faculty;
import com.sms.model.JHS;
import com.sms.model.Report;
import com.sms.model.SHS;
import com.sms.model.Student;
import com.sms.model.Subject;
import com.sms.service.StudentService;

@Controller
@RequestMapping("records")
public class RecordController extends BaseController{
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "home")
	public String welcome(HttpServletRequest request, ModelMap model,Student s, JHS j, SHS h, College c) {
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "landing";
		
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String welcome2(Student s, ModelMap model) {
		System.out.println(studentService.listCount(s));
		model.addAttribute("count",studentService.listCount(s));
		return "index4";
		
	}
	/*
	@RequestMapping(value = "studInfo", method = RequestMethod.GET)
	public String studInfo(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Student student) {
		model.addAttribute("students", studentService.viewStudents(student));
		return "studInfo";
		
	} */
	

	@RequestMapping(value = "studInfo")
	public String listEmployees(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Student student,
			Student s, JHS j, SHS h, College c) {
		model.addAttribute("student", studentService.viewStudents(student));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "studInfo";
		
	}
	@RequestMapping(value = "studInfoJHS")
	public String listJHS(HttpServletRequest request, ModelMap model, @ModelAttribute("jhsstudentCommand") JHS jhsstudent,
			Student s, JHS j, SHS h, College c) {
		model.addAttribute("jhsstudent", studentService.viewJHSStudents(jhsstudent));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "studInfoJHS";
		
	} 
	@RequestMapping(value = "studInfoSHS")
	public String listJHS(HttpServletRequest request, ModelMap model, @ModelAttribute("shsstudentCommand") SHS shsstudent,
			Student s, JHS j, SHS h, College c) {
		model.addAttribute("shsstudent", studentService.viewSHSStudents(shsstudent));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "studInfoSHS";
		
	} 
	@RequestMapping(value = "studInfoCollege")
	public String listJHS(HttpServletRequest request, ModelMap model, @ModelAttribute("collegestudentCommand") College colstudent,
			Student s, JHS j, SHS h, College c) {
		model.addAttribute("colstudent", studentService.viewCollegeStudents(colstudent));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "studInfoCollege";
		
	} 
	@RequestMapping(value = "studentSubjects", method = RequestMethod.GET)
	public String welcome1() {
		return "studentSubjects";
	}

		
	@RequestMapping(value = "elemRec", method = RequestMethod.GET)
	public String listStudent(HttpServletRequest request, ModelMap model, Student s, JHS j, SHS h, College c) {
		List<Student>student = studentService.listStudentss();
		model.put("student", studentService.getAll(Student.class));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));	
		return "elementaryRecords";
	}
	@RequestMapping(value = "jhsRec", method = RequestMethod.GET)
	public String listJHSStudent(HttpServletRequest request, ModelMap model, Student s, JHS j, SHS h, College c) {
		List<JHS>student = studentService.listsJHS();
		model.put("student", studentService.getAll(JHS.class));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));	
		return "jhsRec";
	}
	@RequestMapping(value = "shsRecords", method = RequestMethod.GET)
	public String listSHSStudent(HttpServletRequest request, ModelMap model, Student s, JHS j, SHS h, College c) {
		List<SHS>student = studentService.listSHS();
		model.put("student", studentService.getAll(SHS.class));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));	
		return "shsRecords";
	}
	@RequestMapping(value = "colRec", method = RequestMethod.GET)
	public String listColStudent(HttpServletRequest request, ModelMap model, Student s, JHS j, SHS h, College c) {
		List<College>student = studentService.listCollege();
		model.put("student", studentService.getAll(College.class));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));	
		return "colRec";
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
	public String listSubject(HttpServletRequest request, ModelMap model, @ModelAttribute("subjectCommand") Report subject, 
			 Student student,Student s, JHS j, SHS h, College c) {
		model.put("student", studentService.getAll(Student.class));
		model.addAttribute("report", studentService.viewSubjects(subject));
		model.addAttribute("student", studentService.viewStudents(student));
		model.addAttribute("count",studentService.listCount(s));
		model.addAttribute("countJHS",studentService.listCountJHS(j));
		model.addAttribute("countSHS",studentService.listCountSHS(h));
		model.addAttribute("countCollege",studentService.listCountCollege(c));
		return "shsRecords";
	} 
	
	//count
	
	
}
