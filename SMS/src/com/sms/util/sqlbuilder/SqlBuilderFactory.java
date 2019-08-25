package com.sms.util.sqlbuilder;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.sms.util.InventoryUtility;

public class SqlBuilderFactory {	
	private StringBuffer sql;
	
	private static final String SELECT ="select";
	private static final String FROM ="from";
	private static final String DISTINCT ="distinct";
	private static final String WHERE ="where";
	private static final String AND ="and";
	private static final String OR ="or";
	/*private static final String INSERT ="insert into";
	private static final String VALUES ="values";*/
	private static final String ORDER_BY ="order by";
	/*private static final String UPDATE ="update";
	private static final String SET ="set";*/
	private static final String LIKE ="like";
	private static final String IN ="in";
	private static final String BETWEEN ="between";
	private static final String INNER_JOIN ="inner join";
	private static final String ON ="on";
	private static final String LEFT_JOIN ="left join";
	private static final String RIGHT_JOIN ="right join";
	private static final String FULL_JOIN ="full join";
//	private static final String UNION ="union";
	private static final String AVG ="avg";
//	private static final String COUNT ="count";
	private static final String MAX ="max";
	private static final String MIN ="min";
	private static final String SUM ="sum";
	private static final String EQ ="=";
	private static final String NE ="!=";
	private static final String GE =">=";
	private static final String GT =">";
	private static final String LE ="<=";
	private static final String LT ="<";
	private static final String TRUNC ="trunc";
	private static final String EMPTY =" ";
	private static final String IS_NULL = "is null";
	private static final String AS = "as";
	private static final String GROUP_BY = "group by";
	private static final String IS_NOT_NULL = "is not null";
	
	public final String DATE_FORMAT = "MM-DD-YYYY";
	
	
	private static SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
	
	public SqlBuilderFactory() {
		this.sql = new StringBuffer();
	};
	
	public SqlBuilderFactory select(String ... columns) {
		sql.append(SELECT).append(EMPTY);
		if(columns == null || columns.length <= 0) sql.append(EMPTY);
		else sql.append(InventoryUtility.getStringOfArray(columns, true)).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory from(String table) throws SqlBuilderException {
		if(StringUtils.isEmpty(table)) throw new SqlBuilderException("table name cannot be empty");
		sql.append(FROM).append(EMPTY);
		sql.append(table).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory in(Object ... columns) {
		sql.append(IN).append(EMPTY);
		if(columns == null || columns.length <= 0) sql.append(EMPTY);
		else sql.append("(").append(InventoryUtility.getStringOfArray(columns, false)).append(")").append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory distinct(String ... columns) throws SqlBuilderException {
		if(columns == null || columns.length <= 0) throw new SqlBuilderException("column names cannot be empty");
		sql.append(DISTINCT).append(EMPTY);
		sql.append(InventoryUtility.getStringOfArray(columns, true)).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory appendParentheses(String str) {
		sql.append(str);
		return this;
	}
	
	public SqlBuilderFactory where() {
		sql.append(WHERE).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory groupBy(String ... columns) throws SqlBuilderException {
		sql.append(GROUP_BY).append(EMPTY);
		if(columns == null || columns.length <= 0) throw new SqlBuilderException("Group by statement cannot be null");
		else sql.append(InventoryUtility.getStringOfArray(columns, true)).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory equal(String key, Object value) {
		if(value instanceof Date) 
			sql.append(TRUNC).append("(")
							 .append(key).append(")")
							 .append(EMPTY)
							 .append(EQ)
							 .append(toDate(value))
							 .append(EMPTY);
		
		else if (value instanceof String) 
			sql.append(key).append(EMPTY)
				.append(EQ).append(EMPTY)
				.append("'").append(value).append("'").append(EMPTY);
		else sql.append(key).append(EMPTY).append(EQ).append(value).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory notEqual(String col1, String col2) {
		sql.append(EMPTY)
		.append(col1)
		.append(NE)
		.append(col2)
		.append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory like(String key, String value) {
		sql.append(key).append(EMPTY)
			.append(LIKE).append(EMPTY)
			.append("'")
			.append(value)
			.append("'")
			.append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory and() {
		sql.append(AND).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory orderBy(String column, String sortBy) {
		sql.append(ORDER_BY).append(EMPTY).append(column).append(EMPTY).append(sortBy);
		return this;
	}
	
	public SqlBuilderFactory or() {
		sql.append(OR).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory as(String alias) {
		sql.append(AS).append(EMPTY).append(alias).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory max(String columnName) {
		if(!sql.toString().trim().endsWith(SELECT))
			sql.append(",").append(EMPTY);
		sql.append(MAX).append(EMPTY)
			 .append("(")
			 .append(columnName)
			 .append(")")
			 .append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory min(String columnName) {
		if(!sql.toString().trim().endsWith(SELECT))
			sql.append(",").append(EMPTY);
		sql.append(MIN).append(EMPTY)
			 .append("(")
			 .append(columnName)
			 .append(")")
			 .append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory ave(String columnName) {
		if(!sql.toString().trim().endsWith(SELECT))
			sql.append(",").append(EMPTY);
		sql.append(AVG).append(EMPTY)
			 .append("(")
			 .append(columnName)
			 .append(")")
			 .append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory sum(String columnName) {
		if(!sql.toString().trim().endsWith(SELECT))
			sql.append(",").append(EMPTY);
		sql.append(SUM).append(EMPTY)
			 .append("(")
			 .append(columnName)
			 .append(")")
			 .append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory between(String column, Object lo, Object hi) {
		sql.append(column).append(EMPTY);
		if(lo instanceof Date && hi instanceof Date)			
			sql.append(BETWEEN).append(EMPTY)
							  .append(toDate(lo)).append(EMPTY)
							 .append(AND).append(EMPTY)
							 .append(toDate(hi))
							 .append(EMPTY);

		else if (lo instanceof String && hi instanceof String) 
			sql.append(BETWEEN).append(EMPTY)
			  .append("'").append(lo).append("'").append(EMPTY)
			 .append(AND).append(EMPTY)
			 .append("'").append(hi).append("'").append(EMPTY)
			 .append(EMPTY);
		else 
			sql.append(BETWEEN).append(EMPTY)
				.append(lo).append(EMPTY)
				.append(AND).append(EMPTY)
				.append(lo).append(EMPTY);
		return this;
	}
	
	public static String toDate(Object date) {
		String dateStr = dateFormat.format((Date)date);
		return "to_date('"+dateStr+"','MM-DD-YYYY')";
	}
	
	public SqlBuilderFactory innerJoin(String table) {
		sql.append(INNER_JOIN).append(EMPTY).append(table).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory leftJoin(String table) {
		sql.append(LEFT_JOIN).append(EMPTY).append(table).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory rightJoin(String table) {
		sql.append(RIGHT_JOIN).append(EMPTY).append(table).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory fullJoin(String table) {
		sql.append(FULL_JOIN).append(EMPTY).append(table).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory isNull(String column) {
		sql.append(column).append(EMPTY).append(IS_NULL).append(EMPTY);
		return this;
	}
	//Billback Reports
	public SqlBuilderFactory isNotNull(String column) {
		sql.append(column).append(EMPTY).append(IS_NOT_NULL).append(EMPTY);
		return this;
	}
	//Billback Reports
	public SqlBuilderFactory orGroupisNull(String column1, String column2){
		sql.append("(").append(column1).append(EMPTY)
							.append(IS_NULL)
							.append(EMPTY)
							.append(OR)
							.append(EMPTY)
			.append(column2).append(EMPTY)
							.append(IS_NULL)
							.append(")")
							.append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory on(String col1, String col2) {
		sql.append(ON).append(EMPTY)
			.append(col1)
			.append(EQ)
			.append(col2)
			.append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory gt(String key, Object value) {
		if(value instanceof Date)
			sql.append(TRUNC).append("(")
							 .append(key).append(")")
							 .append(EMPTY)
							 .append(GT)
							 .append(toDate(value))
							 .append(EMPTY);
		
		else if (value instanceof String) 
			sql.append(key).append(EMPTY)
				.append(GT).append(EMPTY)
				.append("'").append(value).append("'").append(EMPTY);
		else sql.append(key).append(EMPTY).append(GT).append(value).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory ge(String key, Object value) {
		if(value instanceof Date)
			sql.append(TRUNC).append("(")
							 .append(key).append(")")
							 .append(EMPTY)
							 .append(GE)
							 .append(toDate(value))
							 .append(EMPTY);
		
		else if (value instanceof String) 
			sql.append(key).append(EMPTY)
				.append(GE).append(EMPTY)
				.append("'").append(value).append("'").append(EMPTY);
		else sql.append(key).append(EMPTY).append(GE).append(value).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory lt(String key, Object value) {
		if(value instanceof Date)
			sql.append(TRUNC).append("(")
							 .append(key).append(")")
							 .append(EMPTY)
							 .append(LT)
							 .append(toDate(value))
							 .append(EMPTY);
		
		else if (value instanceof String) 
			sql.append(key).append(EMPTY)
				.append(LT).append(EMPTY)
				.append("'").append(value).append("'").append(EMPTY);
		else sql.append(key).append(EMPTY).append(LT).append(value).append(EMPTY);
		return this;
	}
	
	public SqlBuilderFactory le(String key, Object value) {
		if(value instanceof Date)
			sql.append(TRUNC).append("(")
							 .append(key).append(")")
							 .append(EMPTY)
							 .append(LE)
							 .append(toDate(value))
							 .append(EMPTY);
		
		else if (value instanceof String) 
			sql.append(key).append(EMPTY)
				.append(LE).append(EMPTY)
				.append("'").append(value).append("'").append(EMPTY);
		else sql.append(key).append(EMPTY).append(LE).append(value).append(EMPTY);
		return this;
	}
	
	
	public String getSql() {
		return sql.toString();
	}
	
	public void setSql(StringBuffer sql) {
		this.sql = sql;
	}
		
	public SqlBuilderFactory append() {
		sql.append(" ");
		return this;
	}	
	
	
	
	public static List<SqlBuilderAbstractVO> transformToSqlBuilderAbstractVO(List<? extends Map<String, Object>> list) {
		List<SqlBuilderAbstractVO> transformedList = new ArrayList<SqlBuilderAbstractVO>();
		
		for(Map<String, Object> map : list) {
			SqlBuilderAbstractVO abstractVO = new SqlBuilderAbstractVO();
			for(String key : map.keySet()) {
				abstractVO.setField(key, map.get(key));
			}
			
			transformedList.add(abstractVO);
		}
		
		return transformedList;
	}
}