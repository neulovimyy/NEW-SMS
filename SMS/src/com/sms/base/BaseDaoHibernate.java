package com.sms.base;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToEntityMapResultTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.sms.util.Config;
import com.sms.util.DateUtility;
import com.sms.util.InventoryUtility;
import com.sms.util.sqlbuilder.SqlBuilderAbstractVO;
import com.sms.util.sqlbuilder.SqlBuilderFactory;

@Repository("baseDao")
public class BaseDaoHibernate extends HibernateDaoSupport implements BaseDao {
	@Autowired private Md5PasswordEncoder md5PasswordEncoder;

	public Integer getNotificationSize() {
		return Integer.valueOf(Integer.parseInt(Config.getProperties("notification.size")));
	}

	public Integer getSize() {
		return Integer.valueOf(Integer.parseInt(Config.getProperties("views.mis.view.size")));
	}

	public Integer getProductSize() {
		return Integer.valueOf(Integer.parseInt(Config.getProperties("views.mis.product.view.size")));
	}

	@Autowired
	public BaseDaoHibernate(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	public Object save(Object entityClass) {
		return getHibernateTemplate().merge(entityClass);
	}

	public Object createNew(Object entityClass) {
		Long id = (Long) getHibernateTemplate().save(entityClass);
		return get(entityClass.getClass(), id);
	}

	public <L> L get(Class<L> entityClass, Serializable id) {
		return (L) getHibernateTemplate().get(entityClass, id);
	}

	public <L> L load(Class<L> entityClass, Serializable id) {
		return (L) getHibernateTemplate().load(entityClass, id);
	}

	public void delete(Class<?> entityClass, Serializable id) {
		Object entityObject = get(entityClass, id);
		delete(entityObject);
	}

	public List<?> getAll(Class<?> entityClass) {
		return getHibernateTemplate().loadAll(entityClass);
	}

	public void delete(Object entityObject) {
		getHibernateTemplate().delete(entityObject);
	}

	public List<?> getAll(Class<?> entityClass, Integer status) {
		return getHibernateTemplate().find("from " + entityClass.getSimpleName() + " where status = ? order by id", status);
	}

	public List<?> getByStudentId(Class<?> paramClass, String studentNumber) {
		List<?> result = (List<?>) ((Session) getHibernateTemplate()).createQuery("from " + paramClass.getSimpleName() + " where student_number LIKE '%"+studentNumber+"' order by student_id");
		return result;
	}
	
	public List<?> getAll(Class<?> entityClass, List<Integer> status) {
		List<?> results = getSession().createQuery("from " + entityClass.getSimpleName() + " where status in (:status) order by id").setParameterList("status", status).list();
		return results;
	}

	public List<?> getAll(Class<?> entityClass, String orderBy) {
		return getSession().createQuery("from " + entityClass.getSimpleName() + " order by " + orderBy + " asc").list();
	}

	public List<?> getAll(Class<?> entityClass, Long id) {
		return getHibernateTemplate().find("from " + entityClass.getSimpleName() + " where status = ? order by id", id);
	}

	public List<?> getListAllByColumnName(Class<?> entityClass, String columnNam, Object columnValue) {
		return getHibernateTemplate().find("from " + entityClass.getSimpleName() + " where " + columnNam + " = ?", columnValue);
	}

	public List<?> getListAllByColumnName(Class<?> entityClass, String columnNam, Object columnValue, String orderBy, String sortBy) {
		return getHibernateTemplate().find("from " + entityClass.getSimpleName() + " where " + columnNam + " = ?  order by ? " + sortBy, new Object[] { columnValue, orderBy });
	}

	public Calendar getSysdate() {
		Session session = getSessionFactory().openSession();
		Query qry = session.createSQLQuery("select NOW()");

		Timestamp sysDate = (Timestamp) qry.list().get(0);
		String dateStr = DateUtility.convertDateToStr(sysDate, "yyyy-MM-dd");
		String timeStr = DateUtility.convertDateToStr(sysDate, "hh:mm:ss");

		String[] dateArray = dateStr.split("-");
		Calendar date = Calendar.getInstance();
		date.set(1, Integer.parseInt(dateArray[0]));
		date.set(2, Integer.parseInt(dateArray[1]) - 1);
		date.set(5, Integer.parseInt(dateArray[2]));

		String[] timeArray = timeStr.split(":");
		date.set(11, Integer.parseInt(timeArray[0]));
		date.set(12, Integer.parseInt(timeArray[1]));
		date.set(13, Integer.parseInt(timeArray[2]));
		date.set(14, 0);

		session.flush();
		session.close();

		return date;
	}

	public List<?> getAllByHashMap(Class<?> entityClass, HashMap<String, Object> map) {
		DetachedCriteria criteria = DetachedCriteria.forClass(entityClass);

		Set<String> keys = map.keySet();
		Iterator<String> iter = keys.iterator();

		Object date_from = null;
		Object date_to = null;
		String date_param = "";
		if (map.size() > 0) {
			while (iter.hasNext()) {
				String key = (String) iter.next();
				if ((map.get(key) instanceof Object[])) {
					criteria.add(Expression.in(key, (Object[]) map.get(key)));
				} else if (key.contains("dateFrom%")) {
					date_from = map.get(key);
				} else if (key.equalsIgnoreCase("orderBy")) {
					criteria.addOrder(Order.asc(map.get(key).toString()));
				} else if (key.equalsIgnoreCase("orderByDesc")) {
					criteria.addOrder(Order.desc(map.get(key).toString()));
				} else if (key.contains("dateTo%")) {
					date_to = map.get(key);
					int index = key.indexOf("%");
					date_param = key.substring(index + 1);
				} else if (key.contains("description")) {
					criteria.add(Expression.isNotNull("description"));
				} else if (key.contains(">")) {
					criteria.add(Expression.gt(key.replace(">", ""), map.get(key)));
				} else if (key.contains("join")) {
					criteria.createAlias(map.get(key).toString(), "o");
				} else if (key.contains("!n")) {
					criteria.add(Restrictions.isNotNull(map.get(key).toString()));
				} else {
					criteria.add(Expression.eq(key, map.get(key)));
				}
			}
			if ((date_from != null) && (date_to != null)) {
				criteria.add(Expression.between(date_param, date_from, date_to));
			}
		}
		return getHibernateTemplate().findByCriteria(criteria);
	}

	public List<?> getListAllByColumnName(Class<?> entityClass, String operator, List<String> columnNam, List<Object> columnValue) {
		return null;
	}

	public List<?> getListAllByHashMapLike(Class<?> entityClass, HashMap<String, Object> map) {
		Criteria criteria = null;

		HashMap<String, Object> mapCriteriaAliases = (HashMap) map.get("criteria_alias");
		criteria = createFetchModeJoins(entityClass, mapCriteriaAliases);

		HashMap<String, Object> mapCriterions_disjunctions = (HashMap) map.get("criterion_params_DISJUNTION");
		if (mapCriterions_disjunctions.size() > 0) {
			criteria.add(createDisjunction(mapCriterions_disjunctions));
		}
		HashMap<String, Object> mapCriterions_conjunctions = (HashMap) map.get("criterion_params_CONJUNCTION");
		if (mapCriterions_conjunctions.size() > 0) {
			criteria.add(createConjunction(mapCriterions_conjunctions));
		}
		return criteria.list();
	}

	private Criteria createFetchModeJoins(Class<?> entityClass, HashMap<String, Object> map) {
		Criteria criteria = getSession().createCriteria(entityClass);

		Set<String> alias_keys = map.keySet();
		Iterator<String> alias_iters = alias_keys.iterator();
		if (map.size() > 0) {
			while (alias_iters.hasNext()) {
				String key = (String) alias_iters.next();

				criteria.setFetchMode(key, FetchMode.JOIN);
				criteria.createAlias(key, (String) map.get(key));
			}
		}
		return criteria;
	}

	private Disjunction createDisjunction(HashMap<String, Object> map) {
		Set<String> criterionD_keys = map.keySet();
		Iterator<String> criterionD_iters = criterionD_keys.iterator();
		Disjunction disjunction = Restrictions.disjunction();
		if (map.size() > 0) {
			while (criterionD_iters.hasNext()) {
				String key = (String) criterionD_iters.next();
				Criterion criterionName = Restrictions.ilike(key, map.get(key).toString(), MatchMode.ANYWHERE);
				disjunction.add(criterionName);
			}
		}
		return disjunction;
	}

	private Conjunction createConjunction(HashMap<String, Object> map) {
		Set<String> criterionD_keys = map.keySet();
		Iterator<String> criterionD_iters = criterionD_keys.iterator();
		Conjunction conjunction = Restrictions.conjunction();
		if (map.size() > 0) {
			while (criterionD_iters.hasNext()) {
				String key = (String) criterionD_iters.next();
				Criterion criterionName = Restrictions.ilike(key, map.get(key).toString(), MatchMode.ANYWHERE);
				conjunction.add(criterionName);
			}
		}
		return conjunction;
	}

	public void bulkUpdate(Class<?> entityClass, Map<String, Object> map, Map<String, Object> conditionClause) {
		String sql = "update " + entityClass.getSimpleName() + " set ";
		int i = 0;
		for (String key : map.keySet()) {
			sql = sql + key + " = " + map.get(key);
			if (i < map.size() - 1) {
				sql = sql + ", ";
			}
			i++;
		}
		if (conditionClause != null) {
			sql = sql + " where ";
			int j = 0;
			for (String key : conditionClause.keySet()) {
				sql = sql + key + " = " + conditionClause.get(key);
				if (j < conditionClause.size() - 1) {
					sql = sql + " and ";
				}
				i++;
				j++;
			}
		}
		getHibernateTemplate().bulkUpdate(sql);
	}

	public List<?> getListByHibernateCallBack(Class<?> entityClass, Map<String, Object> map, final Integer begin, String orderBy, String sortBy) {
		StringBuffer sb = new StringBuffer();
		sb.append("from ").append(entityClass.getSimpleName()).append(" ");
		if ((map != null) && (!map.isEmpty())) {
			sb.append("where ");
			Iterator<String> it = map.keySet().iterator();
			while (it.hasNext()) {
				String key = (String) it.next();
				Object value = map.get(key);
				if ((value instanceof String)) {
					sb.append("upper(").append(key).append(") like '%").append(((String) value).toUpperCase()).append("%' ");
				} else if ((value instanceof List)) {
					sb.append(key).append(" in ").append(" (").append(InventoryUtility.getStringOfArray((List) value)).append(") ");
				} else {
					sb.append(key).append("=").append(value).append(" ");
				}
				if (it.hasNext()) {
					sb.append(" and ");
				}
			}
		}
		if (StringUtils.isNotEmpty(orderBy)) {
			sb.append("order by ").append(orderBy);
			if (StringUtils.isNotEmpty(sortBy)) {
				sb.append(" ").append(sortBy);
			}
		}
		final String dynamicSql = sb.toString();

		List<?> list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public List<?> doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createQuery(dynamicSql);
				query.setFirstResult((begin.intValue() - 1) * BaseDaoHibernate.this.getSize().intValue());
				query.setMaxResults(BaseDaoHibernate.this.getSize().intValue());

				return query.list();
			}
		});
		return list;
	}

	public List<SqlBuilderAbstractVO> executeSqlQuery(String sql) {
//		SQLQuery sqlQuery = getSession().createSQLQuery(sql);
//		this.logger.debug(sql);
//		List<Map<String, Object>> list = sqlQuery.setResultTransformer(AliasToEntityMapResultTransformer.INSTANCE).list();
//		List<SqlBuilderAbstractVO> abstractVOs = SqlBuilderFactory.transformToSqlBuilderAbstractVO(list);
//		return abstractVOs;
		return null;
	}

	public String removeApos(String obj) {
		if (StringUtils.isNotEmpty(obj)) {
			return obj.replaceAll("'", "");
		}
		return "";
	}

	public <L> L getNative(Class<L> clazz, Object id) {
		Field field1 = null;
		Field field2 = null;
		SQLQuery query = null;
		try {
			field1 = clazz.getDeclaredField("className");
			field2 = clazz.getDeclaredField("classId");
		} catch (SecurityException e1) {
			e1.printStackTrace();
		} catch (NoSuchFieldException e1) {
			e1.printStackTrace();
		}
		try {
			query = (SQLQuery) getSession().createSQLQuery("SELECT \t{CLAZZ.*} \tFROM " +

			field1.get(Integer.valueOf(0)) + " CLAZZ " + "\tWHERE CLAZZ." + field2.get(Integer.valueOf(0)) + " = :ID").addEntity("CLAZZ", clazz).setParameter("ID", id);
		} catch (DataAccessResourceFailureException e) {
			e.printStackTrace();
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return (L) query.list().get(0);
	}

	public void deleteObjIn(Class<?> clazz, Long id, String condition, Long param) {
		StringBuffer hql = new StringBuffer("delete from " + clazz.getSimpleName() + " obj where 1=1 ");
		if (!InventoryUtility.isNull(id)) {
			hql.append("and obj.id = :id ");
		}
		if ((StringUtils.isNotEmpty(condition)) && (!InventoryUtility.isNull(param))) {
			hql.append("and ").append(condition).append(" = :param");
		}
		Query query = getSession().createQuery(hql.toString());
		if (!InventoryUtility.isNull(id)) {
			query.setParameter("id", id);
		}
		if ((StringUtils.isNotEmpty(condition)) && (!InventoryUtility.isNull(param))) {
			query.setParameter("param", param);
		}
		query.executeUpdate();
	}

	@Override
	public void deleteObjIn(Class<?> clazz, Long id, String condition, Boolean param) {
		StringBuffer hql = new StringBuffer("delete from " + clazz.getSimpleName() + " obj where 1=1 ");

		if (!InventoryUtility.isNull(id)) {
			hql.append("and obj.id = :id ");
		}

		if (StringUtils.isNotEmpty(condition) && !InventoryUtility.isNull(param)) {
			hql.append("and ").append(condition).append(" = :param");
		}

		Query query = getSession().createQuery(hql.toString());

		if (!InventoryUtility.isNull(id)) {
			query.setParameter("id", id);
		}

		if (StringUtils.isNotEmpty(condition) && !InventoryUtility.isNull(param)) {
			query.setParameter("param", param);
		}

		query.executeUpdate();

	}

	@Override
	public void deleteImage(Class<?> clazz, Long id) {
		StringBuffer hql = new StringBuffer("delete from " + clazz.getSimpleName() + " obj where 1=1 ");

		if (!InventoryUtility.isNull(id)) {
			hql.append("and obj.id = :id ");
		}

		Query query = getSession().createQuery(hql.toString());

		if (!InventoryUtility.isNull(id)) {
			query.setParameter("id", id);
		}

		query.executeUpdate();
	}

	
	
}
