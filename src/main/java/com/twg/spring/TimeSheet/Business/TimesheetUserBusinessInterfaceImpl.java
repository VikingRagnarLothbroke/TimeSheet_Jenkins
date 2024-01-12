package com.twg.spring.TimeSheet.Business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.twg.spring.TimeSheet.Dao.TimesheetUserDaoInterface;

import com.twg.spring.TimeSheet.Entities.Timeuser;

@Component
public class TimesheetUserBusinessInterfaceImpl implements TimesheetUserBusinessInterface {

	
	@Autowired
	private TimesheetUserDaoInterface timesheetUserDaoInterface;
	
	
	public void saveentry(Timeuser entry) {
		timesheetUserDaoInterface.saveentry(entry);
		
	}
}
