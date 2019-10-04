package com.test;

import java.util.Date;

import com.sms.util.DateUtility;

public class lol {
	public static void main(String[] args) {
		Date d = new Date("09/04/2019");
		
		System.out.println(DateUtility.computeAge(d));
	}
}
