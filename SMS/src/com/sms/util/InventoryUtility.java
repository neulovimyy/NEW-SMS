package com.sms.util;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

@SuppressWarnings("unchecked")
public class InventoryUtility {
	
	protected static Logger logger = Logger.getLogger(InventoryUtility.class);
	public static Long CLINIC_ID;
   
    
    
    /**
     * Retrieves the loginname of the login user
     */
    public static String getLoginUsername() {
        return getAuthentication() != null ? getAuthentication().getName() : null;
       
    }
    
    public static Collection<GrantedAuthority> getAuthorities() {
        return getAuthentication().getAuthorities();
    }
    
    public static Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }
    
    /**
     * Concatenates the given array of String with a delimiter
     * @param stringList
     * @param delimiter
     * @return
     */
    
    public static String arrayToString(List<String> stringList, String delimiter) {
        if(stringList.isEmpty()) {
            return "";
        }
        
        StringBuilder sb = new StringBuilder();
                
        for(String s : stringList) {
            sb.append(s);
            sb.append(delimiter);
        }
        
        /*
         * returns the concatenated string excluding the last delimiter
         */            
        return sb.substring(0, sb.length() - delimiter.length());        
    }
    
    /**
     * Concatenates the given array of String with a delimiter
     * @param stringList
     * @param delimiter
     * @return
     */
    
    public static String arrayListToString(List<Long> longList, String delimiter) {
        if(longList.isEmpty()) {
            return "";
        }
        
        StringBuilder sb = new StringBuilder();
                
        for(Long l : longList) {
            sb.append(l.toString());
            sb.append(delimiter);
        }
        
        /*
         * returns the concatenated string excluding the last delimiter
         */            
        return sb.substring(0, sb.length() - delimiter.length());        
    }
    
    public static String intArrayListToString(List<Integer> intList, String delimiter) {
        if(intList.isEmpty()) {
            return "";
        }
        
        StringBuilder sb = new StringBuilder();
                
        for(Integer l : intList) {
            sb.append(l.toString());
            sb.append(delimiter);
        }
        
        /*
         * returns the concatenated string excluding the last delimiter
         */            
        return sb.substring(0, sb.length() - delimiter.length());        
    }
    
    /**
     * Concatenates the given array of String 
     * @param stringList
     * @return
     */
    public static String arrayToString(List<String> stringList) {
        return arrayToString(stringList, "");        
    }   
        
	/**
	 * Accepts a vargarg and check if 
	 * one member is null (or empty in case of String). 
	 */
	@SuppressWarnings("rawtypes")
	public static boolean hasEmpty(Object... obj) {
	    
        for(Object o : obj) {            
            if(o instanceof String && StringUtils.isBlank((String) o)) {
                return true;
                
            } else if(o instanceof java.util.Collection && ((java.util.Collection) o).isEmpty()) {
            	return true;
            	
            } else if(isNull(o)) {
                return true;
            }
        } 
        
        return false;
	}
	
	public static boolean hasNoEmpty(Object... obj) {
	    return !hasEmpty(obj);
	}
		
	/**
	 * Checks if the given object is null
	 * @param obj
	 * @return
	 */
	public static boolean isNull(Object obj) {
	    return (obj == null);
	}
	
	
	public static boolean checkAlphanumeric(String pattern) {
		if(StringUtils.isBlank(pattern))
			return false;
		return pattern.matches("[a-z0-9]*[a-z][0-9][0-9a-z]*");
	}
	
	@SuppressWarnings("rawtypes")
	public static Object getAnnotatedValue(Object o, Class clazz) throws Exception {
	    Object annotatedValue = null;
	    
    	for(Method method : o.getClass().getMethods()) {
			if(method.isAnnotationPresent(clazz)) {
			    try {
			        annotatedValue = method.invoke(o);
			        
			        break;
			    }
			    catch (Exception e) {
                    throw new Exception(e.getMessage());
                }
			}
		}

		return annotatedValue;
    }
	
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");

		if (StringUtils.isNotEmpty(ip)) {
			String[] remoteIps = ip.split(",");
			for (String tempIp : remoteIps) {
				if (!isValidIp(tempIp)) {
					return tempIp;
				}
			}
		}
		if (isValidIp(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (isValidIp(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
	
	//Util
	public static String getString(Object var) {
		return var != null?var.toString():"";
	}
	
	public  static Double getDoubleValue(Double var) {
		return var ==null ? new Double(0) :  var;
	}
	
	public static boolean isEmpty(Object... obj) {
		for(Object o : obj) {
			if(!isHallow(o))
				return false;
		}
		
		return true;
	}
	
	public static boolean isHallow(Object o) {
        if(o instanceof String && StringUtils.isBlank((String) o)) {
            return true;
        }
        else if (o instanceof Collection && ((Collection<?>) o).isEmpty()) {
        	return true;        	
        }
        else if(o == null) {
            return true;
        }
        
        return false;
	}
	
	/**
	 * Returns the server host name
	 */
	public static String getServerHostName(HttpServletRequest request) {
		String name = request.getHeader("Host");
		
		if(StringUtils.isEmpty(name)) {
			int portStartIndex = name.indexOf(":");
			
			if(portStartIndex > -1) {
				name = name.substring(0, portStartIndex);
			}
		} else {
			name = request.getServerName();
		}
		
		return name;
	}
	
	
	
	private static boolean isValidIp(String ip) {
		final String UNKNOWN_IP = "unknown";
		return StringUtils.isEmpty(ip) || ip.length() == 0 || UNKNOWN_IP.equalsIgnoreCase(ip);
	}
	
	public static synchronized String getStringOfArray(Object[] ids) {
		StringBuffer sb = new StringBuffer();
		for (Object id : ids) {
			sb.append("'").append(id).append("'").append(",");
		}

		int lastIndexComma = sb.toString().lastIndexOf(",");
		String converted = sb.toString().substring(0, lastIndexComma);
		
		return converted;
	}
	
	public static synchronized String getStringOfArray(List<?> ids) {
		StringBuffer sb = new StringBuffer();
		for (Object id : ids) {
			sb.append(id).append(",");
		}

		int lastIndexComma = sb.toString().lastIndexOf(",");
		String converted = sb.toString().substring(0, lastIndexComma);
		
		return converted;
	}
	
	public static synchronized String getStringOfArray(List<?> ids, Boolean removeQuote) {
		StringBuffer sb = new StringBuffer();
		for (Object id : ids) {
			if(id instanceof String && !removeQuote) sb.append("'").append(id).append("'").append(",");
			else sb.append(id).append(",");
		}

		int lastIndexComma = sb.toString().lastIndexOf(",");
		String converted = sb.toString().substring(0, lastIndexComma);
		
		return converted;
	}
	
	public static synchronized String getStringOfArray(Object[] ids, Boolean removeQuote) {
		StringBuffer sb = new StringBuffer();
		for (Object id : ids) {
			if(id instanceof String && !removeQuote) sb.append("'").append(id).append("'").append(",");
			else sb.append(id).append(",");
		}

		int lastIndexComma = sb.toString().lastIndexOf(",");
		String converted = sb.toString().substring(0, lastIndexComma);
		
		return converted;
	}
	
	public static List<Long> arrayToList(List<String> stringList) {
        if(stringList.isEmpty()) {
            return null;
        }
        
        List<Long> list = new ArrayList<Long>();
                
        for(String s : stringList) {
            list.add(Long.valueOf(s));
        }    
        return list;        
    }
	
	public static String convertToFourDigit(Long i) {
		StringBuilder sb = new StringBuilder();
		if(i <= 9 && i > 0) {
			sb.append("0000");
			sb.append(i);
			return sb.toString();
		}
		else if(i <= 99 && i >= 10) {
			sb.append("000");
			sb.append(i);
			return sb.toString();
		}else if(i <= 999 && i >= 100) {
			sb.append("00");
			sb.append(i);
			return sb.toString();
		}else if(i <= 9999 && i >= 1000) {
			sb.append("0");
			sb.append(i);
			return sb.toString();
		}else if(i <= 9999 && i >= 1000) {
			sb.append(i);
			return sb.toString();
		}
		return null;
	}
}