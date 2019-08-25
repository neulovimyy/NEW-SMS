package com.sms.util.sqlbuilder;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Abstract VO for all SqlBuilder Transactions
 * @author Ross Zarsuela
 *
 */
public class SqlBuilderAbstractVO implements Serializable{
	private static final long serialVersionUID = 7067033725877970923L;

	private Map<String, Object> map = new HashMap<String, Object>();
	
	public void setField(String field, Object value) { map.put(field, value); }
	public Object getField(String field) { return map.get(field); }
	
	public String getStringField(String field) { return (String) (map.get(field) != null ? map.get(field) : "");}
	public Integer getIntegerField(String field){ return (Integer) (map.get(field) != null ? map.get(field) : 0); }
	public Double getDoubleField(String field) {return (Double) (map.get(field) != null ? map.get(field) : 0);}
	public Float getFloatField(String field) {return (Float) (map.get(field) != null ? map.get(field) : 0);}
	public Long getLongField(String field) {return (Long) (map.get(field) != null ? map.get(field) : 0);}
	public BigDecimal getBigDecimalField(String field) {return (BigDecimal) (map.get(field) != null ? map.get(field) : 0);}
	public Date getDateField(String field) {return (Date) (map.get(field) != null ? map.get(field) : new Date());}
	
	public Map<String, Object> getMap() {return map;}
}
