package com.sms.curriculum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sms.base.BaseServiceImpl;
import com.sms.curriculum.dao.CurriculumDao;
import com.sms.curriculum.model.Curriculum;

@Service("curriculumService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CurriculumServiceImpl extends BaseServiceImpl implements CurriculumService {
	
	@Autowired
	private CurriculumDao curriculumDao;
	
	public List<Curriculum> viewCurriculum(Curriculum curr){
		return curriculumDao.viewCurriculum(curr);
	}
}
