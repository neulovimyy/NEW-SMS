package com.sms.curriculum.dao;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sms.base.BaseDaoHibernate;
import com.sms.curriculum.model.Curriculum;
import com.sms.model.Student;

@Repository("curriculumDao")
public class CurriculumDaoImpl extends BaseDaoHibernate implements CurriculumDao{

	@Autowired
	public CurriculumDaoImpl(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}
	
	public List<Curriculum> viewCurriculum(Curriculum curr){
		//Zid
		StringBuffer hqlQuery = new StringBuffer("from Curriculum e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(curr.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.name) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(curr.getSearch())) {
			query.setParameter("search","%" + curr.getSearch() + "%");
			
		}
		
		List<Curriculum> result = query.list();
		
		return result;
	}

}
