package com.sms.curriculum.service;

import java.util.List;

import com.sms.base.BaseService;
import com.sms.curriculum.model.Curriculum;
import com.sms.model.Student;

public interface CurriculumService extends BaseService {
	
	//Curriculum
	public List<Curriculum> viewCurriculum(Curriculum curr) ;
}
