package com.sms.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

import net.objectlab.kit.datecalc.common.DateCalculator;
import net.objectlab.kit.datecalc.common.DefaultHolidayCalendar;
import net.objectlab.kit.datecalc.common.HolidayCalendar;
import net.objectlab.kit.datecalc.common.HolidayHandlerType;
import net.objectlab.kit.datecalc.joda.LocalDateKitCalculatorsFactory;

import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.LocalDate;
import org.joda.time.Period;
import org.joda.time.PeriodType;


public class DateUtility {

    public static final String STANDARD_DATE_FORMAT = "MM-dd-yyyy";
    public static final String STANDARD_STRING_DATE_FORMAT = "MM/dd/yyyy";
    public static final String STANDARD_STRING_DATE_FORMAT_FOR_DB = "dd-MMM-yy";
    public static final String MONTH_DAY_YEAR_FORMAT = "MMMM dd, yyyy";
    public static final String SHORT_MONTH_DAY_YEAR_FORMAT = "MMM d, yyyy";
    public static final String TAT_DATE_FORMAT = "yyyy-MM-dd";
    public static final String TIME_12_FORMAT = "hh:mm a";
    public static final String TAT_DATE_FORMAT_TIME = "yyyy-MM-dd HH:mm:ss";
    
    
    public static final String DEFAULT_COUNTRY_NAME = "PH";

    
    public static String convertmm_dd_yyyyFormat(Date date){
    	return convertDateToStr(date, STANDARD_DATE_FORMAT);
    }
    
    public static String getMonthString(Date date) {
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	
    	String month = null;
    	
    	switch(cal.get(Calendar.MONTH)) {
    	case 0:
    		month = "JANUARY"; break;
    	case 1:
    		month = "FEBRUARY"; break;
    	case 2:
    		month = "MARCH"; break;
    	case 3:
    		month = "APRIL"; break;
    	case 4:
    		month = "MAY"; break;
    	case 5:
    		month = "JUNE"; break;
    	case 6:
    		month = "JULY"; break;
    	case 7:
    		month = "AUGUST"; break;
    	case 8:
    		month = "SEPTEMBER"; break;
    	case 9:
    		month = "OCTOBER"; break;
    	case 10:
    		month = "NOVEMBER"; break;
    	case 11:
    		month = "DECEMBER"; break;
    	}
    	
    	return month;
    }

	public static String getMonthString(Integer monthNo) {
	    	
    	String month = null;
    	
    	switch(monthNo) {
    	case 0:
    		month = "JANUARY"; break;
    	case 1:
    		month = "FEBRUARY"; break;
    	case 2:
    		month = "MARCH"; break;
    	case 3:
    		month = "APRIL"; break;
    	case 4:
    		month = "MAY"; break;
    	case 5:
    		month = "JUNE"; break;
    	case 6:
    		month = "JULY"; break;
    	case 7:
    		month = "AUGUST"; break;
    	case 8:
    		month = "SEPTEMBER"; break;
    	case 9:
    		month = "OCTOBER"; break;
    	case 10:
    		month = "NOVEMBER"; break;
    	case 11:
    		month = "DECEMBER"; break;
    	}
    	
    	return month;
    }
	    
	public static Integer getMonthInt(String monthNo) {
		
		Integer month = 0;
		if(monthNo.equalsIgnoreCase("JANUARY") || monthNo.equalsIgnoreCase("JAN")) {
			month = 1;
		}
		if(monthNo.equalsIgnoreCase("FEBRUARY") || monthNo.equalsIgnoreCase("FEB")) {
			month = 2;
		} 
		if(monthNo.equalsIgnoreCase("MARCH") || monthNo.equalsIgnoreCase("MAR")) {
			month = 3;
		} 
		if(monthNo.equalsIgnoreCase("APRIL") || monthNo.equalsIgnoreCase("APR") ){
			month = 4;
		} 
		if(monthNo.equalsIgnoreCase("MAY")) {
			month = 5;
		} 
		if(monthNo.equalsIgnoreCase("JUNE") || monthNo.equalsIgnoreCase("JUN")) {
			month = 6;
		} 
		if(monthNo.equalsIgnoreCase("JULY") || monthNo.equalsIgnoreCase("JUL")) {
			month = 7; 
		} 
		if(monthNo.equalsIgnoreCase("AUGUST") || monthNo.equalsIgnoreCase("AUG")) {
			month = 8;
		} 
		if(monthNo.equalsIgnoreCase("SEPTEMBER") || monthNo.equalsIgnoreCase("SEP")) {
			month = 9;
		} 
		if(monthNo.equalsIgnoreCase("OCTOBER") || monthNo.equalsIgnoreCase("OCT")) {
			month = 10;
		} 
		if(monthNo.equalsIgnoreCase("NOVEMBER") || monthNo.equalsIgnoreCase("NOV")) {
			month = 11;
		} 
		if(monthNo.equalsIgnoreCase("DECEMBER") || monthNo.equalsIgnoreCase("DEC")){
			month = 12;
		} 
		return month;
	}


    public static String convertShortMonthDayYearFormat(Date date){
    	return convertDateToStr(date,SHORT_MONTH_DAY_YEAR_FORMAT);
    }
    
    public static String convertMonthDayYearFormat(Date date){
    	return convertDateToStr(date, MONTH_DAY_YEAR_FORMAT);
    }
    
    public static String convertDateToStr(Date date){
    	return convertDateToStr(date, STANDARD_STRING_DATE_FORMAT);
    }
    
    public static String convertDateToStrForDB(Date date){
    	return convertDateToStr(date, STANDARD_STRING_DATE_FORMAT_FOR_DB);
    }
    
    public static String convertDateToStr(Date date, String format) {
        if (date == null) {
            return "";
        }

        SimpleDateFormat sdf = new SimpleDateFormat(format);

        return sdf.format(date);
    }
    //01-20-2013, "MM/dd/yyyy"
    public static Date convertStringToDate(String strDate, String format) {
        if (strDate == null || strDate.isEmpty()) {
            return new Date();
        }

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat(format);

        try {
            date = sdf.parse(strDate);
        } catch (ParseException ex) {
            ex.printStackTrace(System.out);
        }

        return date;
    }
    
    public static Date convertStringToDate(String strDate, String format, Boolean allowNull) {
        if(allowNull && StringUtils.isEmpty(strDate)) {
        	return null;
        } else {
        	return convertStringToDate(strDate, format);
        }
    }

    public static boolean compareDates(Date startDate, Date endDate) {
        DateTime startDateTime = new DateTime(startDate);

        return startDateTime.isBefore(endDate.getTime());
    }

    public static Integer computeAge(Date dateOfBirth) {
        int age = 0;

        Calendar born = Calendar.getInstance();
        Calendar now = Calendar.getInstance();

        if (dateOfBirth != null) {
            now.setTime(new Date());
            born.setTime(dateOfBirth);

            if (born.after(now)) {
                throw new IllegalArgumentException("Can't be born in the future");
            }

            age = now.get(Calendar.YEAR) - born.get(Calendar.YEAR);

            if (now.get(Calendar.DAY_OF_YEAR) < born.get(Calendar.DAY_OF_YEAR)) {
                age -= 1;
            }
        }

        return age;
    }
    
    public static Integer getDaysDifference(Date startDate, Date endDate) {
    	if(startDate == null || endDate == null) {
    		return 0;
    	} else {
	    	Period p = new Period(startDate.getTime(), endDate.getTime(), PeriodType.days());
	        return p.getDays();
    	}
    }
    
    public static Integer getMonthDifference(Date startDate, Date endDate){
    	if(startDate.equals(null) || endDate.equals(null)){
    		return 0;
    	}else{
    		Integer monthDiff=0;
    		Calendar start = Calendar.getInstance();
    		Calendar end = Calendar.getInstance();
    		
    		start.setTime(startDate);
    		end.setTime(endDate);
    		
    		monthDiff = (start.get(Calendar.YEAR) - end.get(Calendar.YEAR)) * 12;
    		monthDiff += start.get(Calendar.MONTH) - end.get(Calendar.MONTH);
    		
    		return monthDiff;
    	}
    }
    
    public static Integer getDaysDifferenceExcludingWeekends(Date startDate, Date endDate) {
    	Period p = new Period(startDate.getTime(), endDate.getTime(), PeriodType.days());
        Integer days = p.getDays();
    		
        p = new Period(startDate.getTime(), endDate.getTime(), PeriodType.weeks());
    	Integer weeks = p.getWeeks();
    	days = ((days+1) - (weeks*2));
    			
        return days;
    }
    
    public static boolean checkAPEEligibility(Date membershipDate) {
        Calendar start = Calendar.getInstance();
        Calendar end = Calendar.getInstance();

        start.setTime(new Date());
        end.setTime(membershipDate);

        return monthsBetween(start, end) >= 6 ? true : false;
    }

    public static boolean checkAPEEligibility(Date membershipDate, Date subGroupEffDate) {
    	if(membershipDate == null || subGroupEffDate == null) return false;
    	
        Calendar start = Calendar.getInstance();
        Calendar end = Calendar.getInstance();

        Date temp;

        if (membershipDate.before(subGroupEffDate)) {
            temp = subGroupEffDate;
        } else {
            temp = membershipDate;
        }

        start.setTime(new Date());
        end.setTime(temp);

        return monthsBetween(start, end) >= 6 ? true : false;
    }

    public static double monthsBetween(Calendar start, Calendar end) {

        double monthsBetween = 0;
        //difference in month for years
        monthsBetween = (start.get(Calendar.YEAR) - end.get(Calendar.YEAR)) * 12;
        //difference in month for months
        monthsBetween += start.get(Calendar.MONTH) - end.get(Calendar.MONTH);
        //difference in month for days
        if (start.get(Calendar.DAY_OF_MONTH) != start.getActualMaximum(Calendar.DAY_OF_MONTH)
                && start.get(Calendar.DAY_OF_MONTH) != start.getActualMaximum(Calendar.DAY_OF_MONTH)) {
            monthsBetween += ((start.get(Calendar.DAY_OF_MONTH) - end.get(Calendar.DAY_OF_MONTH)) / 31d);
        }

        return Math.ceil(monthsBetween);
    }

	public static LocalDate getNextBusinessDay(LocalDate startDate, int days) {
		DateCalculator<LocalDate> cal = LocalDateKitCalculatorsFactory.getDefaultInstance().getDateCalculator(DEFAULT_COUNTRY_NAME, HolidayHandlerType.FORWARD);
		cal.setStartDate(startDate); 
		
		return cal.getCurrentBusinessDate();
	}
	
	// TODO: mike - we need a way to easily register PH holidays
	// algorithm: upload a file that has some strict formatting
	// 		or we can get it from DB
	public static void registerHolidays(Set<LocalDate> holidays, String name){
		HolidayCalendar<LocalDate> calendar = new DefaultHolidayCalendar<LocalDate>(holidays);
		
		// after adding holidays, this registers it
		LocalDateKitCalculatorsFactory.getDefaultInstance().registerHolidays(name, calendar);
	}
	
	public static HolidayCalendar<LocalDate> getHolidays(String name){
		return LocalDateKitCalculatorsFactory.getDefaultInstance().getHolidayCalendar(name);		
	}
	
	public static LocalDate getNextMonth(Date today){
		return getNextMonth(today, null);
	}
	
	public static LocalDate getNextMonth(Date today, Integer preferredDay){
		return getNextMonth(new LocalDate(today), preferredDay);
	}
	
	public static LocalDate getNextMonth(Date today, Integer monthInterval,  Integer preferredDay){
		return getNextMonth(new LocalDate(today), monthInterval, preferredDay);
	}
	
	public static LocalDate getNextMonth(LocalDate today){
		return getNextMonth(today, null);
	}
	
	public static LocalDate getNextMonth(LocalDate today, Integer preferredDay){
		preferredDay = (null == preferredDay)? 1: preferredDay;
		return today.plusMonths(1).withDayOfMonth(preferredDay);
	}
	
	public static LocalDate getNextMonth(LocalDate today, Integer monthInterval, Integer preferredDay){
		preferredDay = (null == preferredDay)? 1: preferredDay;
		return today.plusMonths(monthInterval).withDayOfMonth(preferredDay);
	}
	
	public static Date addDayExcludeWeekends(Date date, Integer noOfDays) {

		Calendar tatDate = Calendar.getInstance();

		if (date != null) {
			tatDate.setTime(date);

			  for (int i = 0; i < noOfDays; i++)
			  {
				  tatDate.add(Calendar.DAY_OF_MONTH, 1);
			    while (tatDate.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY || tatDate.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY)
			    {
			    	tatDate.add(Calendar.DAY_OF_MONTH, 1);
			    }
			  }

			  return tatDate.getTime();
		} else {
			return null;
		}
		
	}
	
	public static Date minus(Date date, Integer days){
		LocalDate localDate = new LocalDate(date);
		
		return localDate.minusDays(days).toDateMidnight().toDate();
	}
	
	public static Date addDay(Date date, Integer days) {
		LocalDate localDate = new LocalDate(date);
		
		return localDate.plusDays(days).toDateMidnight().toDate();
    }
	
	public static Date addYear(Date date, Integer year) {
		LocalDate localDate = new LocalDate(date);
		
		return localDate.plusYears(year).toDateMidnight().toDate();
    }
	
	public static Date getStartDayTime(Date date) {
		LocalDate localDate = new LocalDate(date);
		
		return localDate.toDateMidnight().toDate();
	}
	
	public static Date getEndDayTime(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.set(Calendar.HOUR_OF_DAY, 23);
		cal.set(Calendar.MINUTE, 59);
		cal.set(Calendar.SECOND, 59);
		
		return cal.getTime();
	}
	
    public static String getTimeDuration(Date start, Date end) {

		// Get msec from each, and subtract.
		long diff = end.getTime() - start.getTime();
		long diffSeconds = diff / 1000 % 60;
		long diffMinutes = diff / (60 * 1000) % 60;
		long diffHours = diff / (60 * 60 * 1000);
		
		return diffHours + "h : " + diffMinutes + "m : " + diffSeconds +"s";
	}
    
    
    
    @SuppressWarnings("deprecation")
	public static String getTime(Date date) {
		return String.valueOf(date.getHours() + "h : " + date.getMinutes() + "m : " + date.getSeconds() + "s");
	}
    
    public static Date getSuspensionDate(Date duteDate){
    	if(duteDate == null) return null;
    	/*SimpleDateFormat sdf_MMddyyyy = new SimpleDateFormat("MM/dd/yyyy");
		String[] strSuspensionDate = sdf_MMddyyyy.format(duteDate).split("/");
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.MONTH, (Integer) Integer.parseInt(strSuspensionDate[0]) + 1);
		cal.set(Calendar.DATE, (Integer) Integer.parseInt(strSuspensionDate[1]));
		cal.set(Calendar.YEAR, (Integer) Integer.parseInt(strSuspensionDate[2]));
		
		cal.add(Calendar.DATE, 1);
		
		return new Date(cal.getTimeInMillis());*/
    	
    	return addDay(duteDate, 1);
	}
    
    public static Double getDaysBetween(Date startDate, Date endDate) {
    	if(startDate == null || endDate == null) return null;
    		
    	LocalDate date1 = new LocalDate(startDate);
    	LocalDate date2 = new LocalDate(endDate);
    	return new Double(Days.daysBetween(date1, date2).getDays());
    }
    
    public static Integer getComputedStart(String time) {
    	Integer hour = Integer.parseInt(StringUtils.substringBefore(time, ":"));
    	Integer minute = Integer.parseInt(StringUtils.substring(StringUtils.substringAfter(time, ":"), 0, 2));
    	
    	if(StringUtils.contains(time, "PM") && hour != 12)
	    {
    		hour += 12;
	    }
    	
    	Integer totalHour = hour;
    	Integer totalTime = (totalHour*60)+minute;
    	return totalTime;
	}
}