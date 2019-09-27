package com.sms.base;

import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.model.Student;
import com.sms.util.Config;

@Service
public class BaseServiceImpl
  implements BaseService
{
  private BaseDao baseDao;
  
  public Integer getSize()
  {
    return Integer.valueOf(Integer.parseInt(Config.getProperties("views.mis.view.size")));
  }
  
  public Integer getProductSize()
  {
    return Integer.valueOf(Integer.parseInt(Config.getProperties("views.mis.product.view.size")));
  }
  
  @Autowired
  public void setBaseDao(BaseDao baseDao)
  {
    this.baseDao = baseDao;
  }
  
  
  public BaseDao getBaseDao()
  {
    return this.baseDao;
  }
  
  public Object save(Object entityObject)
  {
    return this.baseDao.save(entityObject);
  }
  
  public Object createNew(Object entityObject)
  {
    return this.baseDao.createNew(entityObject);
  }
  
  public <L> L get(Class<L> entityClass, Serializable id)
  {
    return (L)this.baseDao.get(entityClass, id);
  }
  
  public <L> L load(Class<L> entityClass, Serializable id)
  {
    return (L)this.baseDao.load(entityClass, id);
  }
  
  public void delete(Class<?> entityClass, Serializable id)
  {
    this.baseDao.delete(entityClass, id);
  }
  
  public void delete(Object entityObject)
  {
    this.baseDao.delete(entityObject);
  }
  
  public List<?> getAll(Class<?> entityClass)
  {
    return this.baseDao.getAll(entityClass);
  }
  
  public List<?> getAll(Class<?> entityClass, String orderBy)
  {
    return this.baseDao.getAll(entityClass, orderBy);
  }
  
  public List<?> getAll(Class<?> clazz, Integer status)
  {
    return this.baseDao.getAll(clazz, status);
  }
  
  public List<?> getByStudentID(Class<?> paramClass, String string) {
  	// TODO Auto-generated method stub
  		return this.baseDao.getByStudentId(paramClass, string);
  }
  
  public List<?> getAccountStudentID(Class<?> paramClass, String string) {
	  	// TODO Auto-generated method stub
	  		return this.baseDao.getAccountStudentID(paramClass, string);
	  }
  
  
  public List<?> getAll(Class<?> clazz, List<Integer> status)
  {
    return this.baseDao.getAll(clazz, status);
  }
  
  public List<?> getListAllByColumnName(Class<?> entityClass, String columnNam, Object columnValue)
  {
    return this.baseDao.getListAllByColumnName(entityClass, columnNam, columnValue);
  }
  
  public Calendar getSysdate()
  {
    return this.baseDao.getSysdate();
  }
  
  public List<?> getAllByHashMap(Class<?> entityClass, HashMap<String, Object> map)
  {
    return this.baseDao.getAllByHashMap(entityClass, map);
  }
  
  public String removeApos(String obj)
  {
    if (StringUtils.isNotEmpty(obj)) {
      return obj.replaceAll("'", "");
    }
    return "";
  }
  
  public <L> L getNative(Class<L> clazz, Object id)
  {
    return (L)this.baseDao.getNative(clazz, id);
  }
  
  public Map<Integer, String> getReferenceObjByGroupName(String groupName)
  {
    return null;
  }
  
  public String getReferenceValueByGroupNameKey(String groupName, Integer key)
  {
    return null;
  }
  
  public void bulkUpdate(Class<?> entityClass, Map<String, Object> map, Map<String, Object> conditionClause)
  {
    this.baseDao.bulkUpdate(entityClass, map, conditionClause);
  }


}
