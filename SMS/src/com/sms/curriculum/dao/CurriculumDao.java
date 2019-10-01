package com.sms.curriculum.dao;

import java.util.List;

import com.sms.base.BaseDao;
import com.sms.curriculum.model.Curriculum;

public interface CurriculumDao extends BaseDao{
	public List<Curriculum> viewCurriculum(Curriculum curr);
}
