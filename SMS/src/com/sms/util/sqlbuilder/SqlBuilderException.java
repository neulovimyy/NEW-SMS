package com.sms.util.sqlbuilder;

/**
 * 
 * @author Ross Zarsuela
 *
 */
public class SqlBuilderException extends Exception{
	private static final long serialVersionUID = -3498040900155542231L;
	
	public SqlBuilderException() {}
	public SqlBuilderException(String exception) {
		super(exception);
	}
}