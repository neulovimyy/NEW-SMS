package com.sms.base;

import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sms.model.Student;

public abstract interface BaseService
{
  public static final String KEY_COUNT = "count";
  public static final String KEY_LIST = "list";
  
  public abstract Object save(Object paramObject);
  
  public abstract Object createNew(Object paramObject);
  
  public abstract <L> L get(Class<L> paramClass, Serializable paramSerializable);
  
  public abstract <L> L load(Class<L> paramClass, Serializable paramSerializable);
  
  public abstract void delete(Class<?> paramClass, Serializable paramSerializable);
  
  public abstract void delete(Object paramObject);
  
  public abstract List<?> getAll(Class<?> paramClass);
  
  public abstract List<?> getAll(Class<?> paramClass, String paramString);
  
  public abstract List<?> getAll(Class<?> paramClass, Integer paramInteger);
  
  public abstract List<?> getAll(Class<?> paramClass, List<Integer> paramList);
  
  public abstract List<?> getListAllByColumnName(Class<?> paramClass, String paramString, Object paramObject);
  
  public abstract Calendar getSysdate();
  
  public abstract List<?> getAllByHashMap(Class<?> paramClass, HashMap<String, Object> paramHashMap);
  
  public abstract Map<Integer, String> getReferenceObjByGroupName(String paramString);
  
  public abstract String getReferenceValueByGroupNameKey(String paramString, Integer paramInteger);
  
  public abstract void bulkUpdate(Class<?> paramClass, Map<String, Object> paramMap1, Map<String, Object> paramMap2);
  
  public abstract <L> L getNative(Class<L> paramClass, Object paramObject);

  public abstract List<?> getByStudentID(Class<?> paramClass, String string);
  public abstract List<?> getBySubjectID(Class<?> paramClass, String string);
  
  public List<?> getAccountStudentID(Class<?> paramClass, String string);
}
