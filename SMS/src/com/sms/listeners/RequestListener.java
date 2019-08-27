package com.sms.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class RequestListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		sce.getServletContext().getContextPath();
		
	}

}
