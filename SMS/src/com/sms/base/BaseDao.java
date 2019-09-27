package com.sms.base;

import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sms.util.sqlbuilder.SqlBuilderAbstractVO;

public abstract interface BaseDao
{
  public static final String KEY_COUNT = "count";
  public static final String KEY_LIST = "list";
  public static final String CRITERIA_ALIAS = "criteria_alias";
  public static final String CRITERION_PARAMS_OR = "criterion_params_DISJUNTION";
  public static final String CRITERION_PARAMS_AND = "criterion_params_CONJUNCTION";
  
  public abstract Object save(Object paramObject);
  
  public abstract Object createNew(Object paramObject);
  
  public abstract <L> L get(Class<L> paramClass, Serializable paramSerializable);
  
  public abstract <L> L load(Class<L> paramClass, Serializable paramSerializable);
  
  public abstract void delete(Class<?> paramClass, Serializable paramSerializable);
  
  public abstract void delete(Object paramObject);
  
  public abstract void deleteObjIn(Class<?> paramClass, Long paramLong1, String paramString, Long paramLong2);
  
  public abstract List<?> getAll(Class<?> paramClass);
  
  public abstract List<?> getAll(Class<?> paramClass, String paramString);
  
  public abstract List<?> getAll(Class<?> paramClass, Integer paramInteger);
  
  public abstract List<?> getByStudentId(Class<?> paramClass, String paramString);
  
  public abstract List<?> getAccountStudentID(Class<?> paramClass,String string);
  
  public abstract List<?> getAll(Class<?> paramClass, List<Integer> paramList);
  
  public abstract List<?> getAll(Class<?> paramClass, Long paramLong);
  
  public abstract List<?> getListAllByColumnName(Class<?> paramClass, String paramString, Object paramObject);
  
  public abstract List<?> getListAllByColumnName(Class<?> paramClass, String paramString, List<String> paramList, List<Object> paramList1);
  
  public abstract Calendar getSysdate();
  
  public abstract List<?> getAllByHashMap(Class<?> paramClass, HashMap<String, Object> paramHashMap);
  
  public abstract List<?> getListAllByHashMapLike(Class<?> paramClass, HashMap<String, Object> paramHashMap);
  
  public abstract void bulkUpdate(Class<?> paramClass, Map<String, Object> paramMap1, Map<String, Object> paramMap2);
  
  public abstract List<?> getListByHibernateCallBack(Class<?> paramClass, Map<String, Object> paramMap, Integer paramInteger, String paramString1, String paramString2);
  
  public abstract List<SqlBuilderAbstractVO> executeSqlQuery(String paramString);
  
  public abstract List<?> getListAllByColumnName(Class<?> paramClass, String paramString1, Object paramObject, String paramString2, String paramString3);
  
  public abstract <L> L getNative(Class<L> paramClass, Object paramObject);
  
  void deleteObjIn(Class<?> clazz, Long id, String condition, Boolean param);
  
  void deleteImage(Class<?> clazz, Long id);

}
