package com.sms.controller;
		
import java.io.IOException;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.Subject;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.base.BaseController;
import com.sms.enums.AcademicAttainment;
import com.sms.enums.BloodTypeEnum;
import com.sms.enums.CivilStatusEnum;
import com.sms.enums.Gender;
import com.sms.enums.Religion;
import com.sms.service.StudentService;
import com.sms.student.model.EducationalBackground;
import com.sms.student.model.Student;
import com.sms.util.Users;
import com.sms.util.InventoryUtility;
	
@Controller
@RequestMapping("dashboard/student")
public class StudentController extends BaseController{
	static DecimalFormat dc = new DecimalFormat("#####");
	@Autowired
	private StudentService studentService;
			
	private Map<Integer, String> genderList;
	private Map<Integer, String> bloodtypeList;
	private Map<Integer, String> religionList;
	private Map<Integer, String> civilStatusList;
	private Map<Integer, String> educAttainment;
	
	private static final String REDIRECT_EDIT = "/student/edit";
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public void saveEmployee(@ModelAttribute("command") Student cstudent, Users user, BindingResult result, HttpServletResponse response) throws ServletException, IOException {

		if(InventoryUtility.isNull(cstudent.getId())){
			cstudent.setId(studentService.generateStudentNumber() + 1);
			cstudent.setStudentId(cstudent.getStudentNumberFull());
			
			//setting user's credentials
			user.setUsername(cstudent.getFullName());
			user.setPassword(cstudent.getStudentNumberFull());
			user.setStatus("0");
		}
		if(cstudent.getStudentImageFile().getSize() != 0){
			cstudent.setStudentContentType(cstudent.getStudentImageFile().getContentType());
			cstudent.setStudentImage(cstudent.getStudentImageFile().getBytes());
		}
		if(!InventoryUtility.isNull(cstudent.getEducationalBackground())){
			for ( EducationalBackground e :cstudent.getEducationalBackground()) {
				e.setStudent(cstudent);
			}
		}
		if(cstudent.getStudentAcademicFile().getSize() != 0){
			cstudent.setStudentAcademic(cstudent.getStudentAcademicFile().getBytes());
			cstudent.setStudentContentTypeAcademic(cstudent.getStudentAcademicFile().getContentType());
		}
		studentService.save(cstudent);
		response.sendRedirect("students");
	}

	@RequestMapping(value="students")
	public String listEmployees(HttpServletRequest request, ModelMap model, @ModelAttribute("studentCommand") Student student) {
		model.addAttribute("students", studentService.viewStudents(student));
		return "studentList";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addEmployee(HttpServletRequest request,@ModelAttribute("command")  Student cstudent, ModelMap model) {
		
		initModel(model);
		return "addStudent";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addNewEmployee(HttpServletRequest request,@ModelAttribute("command")  Student cstudent, BindingResult result, ModelMap model) {
		String acad = request.getParameter("acad");
		cstudent.setAcad(acad);
		model.addAttribute("acad", acad);
		System.out.println(acad);
		initModel(model);
		return "addStudent";
	}
	
	@RequestMapping(value = "apply", method = RequestMethod.GET)
	public String apply (HttpServletRequest request,ModelMap model, @ModelAttribute("command") Student student , BindingResult result) {
		model.addAttribute("acadAttainment", getAcadAttainment());
		return "iapply";
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteEducBg(@PathVariable("id") Long id,HttpServletRequest request,ModelMap model, @ModelAttribute("command") EducationalBackground educ, BindingResult result) {
		studentService.delete(EducationalBackground.class, educ.getEducId());
		
		return "redirect:" + REDIRECT_EDIT + "?id=" + id;
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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void redirectToHome(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.sendRedirect(request.getContextPath()+"/institute/dashboard/student/home");
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
			Subject subject, HttpServletResponse response) throws IOException {
		
		studentService.save(subject);
		response.sendRedirect("subjects");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "addsubject", method = RequestMethod.GET)
	public String addSubject(@ModelAttribute("command")  Subject subject, ModelMap model, HttpServletResponse response) throws IOException {
		List<Subject> subjects =  (List<Subject>) studentService.getAll(Subject.class);
		
		model.put("subjects", subjects);
		return "addSubject";
	}
	
	@RequestMapping(value="subjects", method = RequestMethod.GET)
	public String listSubject(HttpServletRequest request, ModelMap model) {
		model.put("subjects", studentService.getAll(Subject.class));
		return "subjectList";
	}
	
	
	@RequestMapping(value= "search", method= RequestMethod.GET)
	public String search() {
		return "search";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "searchresult", method = RequestMethod.GET)
	public String searchResult(@ModelAttribute("command") Student student, HttpServletRequest request, ModelMap model) {
		List<Student> students = (List<Student>) studentService.getByStudentID(Student.class,request.getParameter("search"));
		model.put("student", students);
		return "searchResult";
	}
	
	@RequestMapping(value = "deletesubject", method = RequestMethod.GET)
	public void deleteSubject(@ModelAttribute("command") Subject subject, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		/* studentService.deleteSubject(subject); */
		studentService.delete(subject);
		model.put("subject", null);
		model.put("subjects",  studentService.getAll(Subject.class));
		response.sendRedirect("subjects");
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
	
	@RequestMapping(value = "document", method = RequestMethod.GET)
	public void file(@ModelAttribute("command") Student cstudent,BindingResult result, HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		Student student = studentService.get(Student.class, id);
		byte[] fileBytes = student.getStudentAcademic();
        String filename = "academic-student.pdf";

        String fileType = filename.substring(filename.indexOf(".")+1,filename.length());
        System.out.println("FILETYPE IS :>>>>>>>>>>>>>>>"+fileType);

        if (fileType.trim().equalsIgnoreCase("txt"))
        {
        response.setContentType( "text/plain" );
        }
        else if (fileType.trim().equalsIgnoreCase("doc"))
        {
        response.setContentType( "application/msword" );
        }
        else if (fileType.trim().equalsIgnoreCase("xls"))
        {
        response.setContentType( "application/vnd.ms-excel" );
        }
        else if (fileType.trim().equalsIgnoreCase("pdf"))
        {
        response.setContentType( "application/pdf" );
        }
        else if (fileType.trim().equalsIgnoreCase("ppt"))
        {
        response.setContentType( "application/ppt" );
        }
        else
        {
        response.setContentType( "application/octet-stream" );
        }

        response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("cache-control", "must-revalidate");

        ServletOutputStream outs = response.getOutputStream();
        outs.write(fileBytes);
        outs.flush();
        outs.close();
	}
}