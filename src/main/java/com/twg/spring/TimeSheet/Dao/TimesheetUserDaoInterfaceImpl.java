package com.twg.spring.TimeSheet.Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.twg.spring.TimeSheet.Entities.Timeuser;

@Component
public class TimesheetUserDaoInterfaceImpl implements TimesheetUserDaoInterface {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	@Transactional
	public void saveentry(Timeuser entry) {
		
		hibernateTemplate.save(entry);
	}


	

}
