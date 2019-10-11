package com.sms.controller;
		
import java.io.IOException;
import java.security.Principal;

import javax.servlet.SessionCookieConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sms.base.BaseController;
import com.sms.service.StudentService;
import com.sms.util.InventoryUtility;

/*
 * Controller for general pages
 *  - zidrex
 */

@Controller
public class GeneralTilesController extends BaseController{
	
	protected static Logger logger = Logger.getLogger(GeneralTilesController.class);
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
		return "loginPage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginPage(ModelMap model, HttpServletRequest request, @RequestParam(value="error", required = false) Boolean isError) {
		logger.debug("Received request to show login page");
		model.clear();
		if(!InventoryUtility.isNull(isError) && isError) {
			logger.info("isError: " + isError);
			System.out.println("login url");
			request.getSession().setAttribute("isError", isError);
			return "redirect:/institute/login";
		}
		
		return "loginPage";
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public void landingPage(Principal principal, Authentication auth, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String temp = auth.getAuthorities().toString();
		String role = temp.substring(1, temp.length()-1);
		System.out.println(role);
		
		switch(role) {
			case "ADMIN":
				System.out.println("Authority = "+role);
				response.sendRedirect("/SMS/institute/dashboard/student/home");
				break;
			case "ACCOUNTANT":
				System.out.println("Authority = "+role);
				response.sendRedirect("/SMS/institute/dashboard/account/home");
				break;
			case "USER":
				System.out.println("Authority = "+role);
				response.sendRedirect("/SMS/institute/dashbard/user/home");
				break;
			case "FACULTY":
				System.out.println("Authority = "+role);
				response.sendRedirect("/SMS/institute/dashboard/faculty/home");
			case "REGISTRAR":
				System.out.println("Auth");
			default:
				System.out.println("Not a member of this system");
				response.sendRedirect(request.getContextPath()+"/institute/accessDenied");
				break;
		}
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public String accessDenied(ModelMap model, Principal principal) {
		String username = principal.getName();
		model.addAttribute("message", "Sorry "+username+" You don't have privileges to view this page!!!");
		return "deniedPage";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET) 
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession(false);
		if(request.isRequestedSessionIdValid() && session != null) {
			System.out.println("SESSION INVALIDATED");
			session.invalidate();
		}
		handleLogoutPage(response,request);
	}

	private void handleLogoutPage(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie: cookies) {
			
			cookie.setMaxAge(0);
			cookie.setValue(null);
			cookie.setPath("/");
			response.addCookie(cookie);
		}
		response.sendRedirect("SMS/institute/");
	}
	
}