package com.twg.spring.TimeSheet.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.twg.spring.TimeSheet.Business.EntryBusinessInterface;
import com.twg.spring.TimeSheet.Business.TimesheetUserBusinessInterface;
import com.twg.spring.TimeSheet.Business.UserBusinessInterface;
import com.twg.spring.TimeSheet.Entities.Entry;
import com.twg.spring.TimeSheet.Entities.Timeuser;
import com.twg.spring.TimeSheet.Entities.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class Homecontroller {
	
	@Autowired
	private UserBusinessInterface userBusinessInterface;
	
	@Autowired
	private EntryBusinessInterface entryBusinessInterface;
	
	@Autowired
	private TimesheetUserBusinessInterface timesheetUserBusinessInterface;
	
	//Session Creation
		@Autowired
	     HttpSession session;

//Introduction Page
	@RequestMapping("/intro")
	public String intropage() {
		return "main";
	}
			
    //HomePage
	@RequestMapping("/home")
	public String registerpage() {
		return "test";
	}
	@RequestMapping("/test")
	public String testpage() {
		return "demo";
	}
	
	//User Registration Method
	@RequestMapping(path="/registeruser",method=RequestMethod.POST)
	public String registeruser(@ModelAttribute("user") User user) {
		
		userBusinessInterface.save(user);
		
		return "demo";
	}
	
	//User Login Method
	@RequestMapping(path="/userlogin",method=RequestMethod.POST)
	public ModelAndView userlogin(@ModelAttribute("user") User user) {
		
		ModelAndView model= new ModelAndView();
		 
		User user1=userBusinessInterface.findByUsername(user.getUsername());
		System.out.println(user1.getPassword());
		
		if(user1!=null && user1.getPassword().equals(user.getPassword())) {
			model.setViewName("homepage");
			session.setAttribute("user", user1);
			model.addObject("user1", user1);
		}else {
			model.setViewName("login");
		}

		return model;
	}
	
	//Timesheet view 
	@RequestMapping("/timesheet")
	public ModelAndView timesheet() {
		
		ModelAndView model=new ModelAndView("Timesheetentry");
		return model;
	}
	
	//TimeSheet entry
	@RequestMapping(path="/addentry")
	public ModelAndView addentry(@ModelAttribute("entry") Entry entry) {
		
		ModelAndView model=new ModelAndView("homepage");
		
		entryBusinessInterface.saveentry(entry);
		
		User user=(User)session.getAttribute("user");
		User user1=userBusinessInterface.findByUsername(user.getUsername());
		model.addObject("user1", user1);
		return model;	
	}
	
	//WorkUpdates Home Page
	@RequestMapping(path="/getworkupdates")
	public ModelAndView userworkupdates() {
		
		ModelAndView model=new ModelAndView("workupdatepage");
        User user2=(User)session.getAttribute("user");
		
		List<Entry> entries=null;
		
		
		entries=entryBusinessInterface.findByUserId(user2.getId());
	    
		model.addObject("entries",entries);
		
		return model;
	}
	
	//Get workUpdates of particular Entry Date
	@RequestMapping(path="/viewupdates")
	public ModelAndView viewworkupdates(@RequestParam("id") int id) {
		
		ModelAndView model=new ModelAndView("viewentrypage");
		
		Entry entry1=(Entry) entryBusinessInterface.findById(id);
		
		model.addObject("entry", entry1);
		
		return model;
	}
	
	//Back To Home 
	@RequestMapping(path="/backtohome",method=RequestMethod.POST)
	public ModelAndView backtohome(@RequestParam("id") int id) {
		
		ModelAndView model=new ModelAndView("workupdatepage");
		
		List<Entry> entries=null;
	
		entries=entryBusinessInterface.findByUserId(id);
	    
		model.addObject("entries",entries);
		
		return model;
			
	}
	//update
	@RequestMapping(path="/update")
	public ModelAndView update(@RequestParam("id") int id) {
		
		ModelAndView model=new ModelAndView("updateentrypage");
		
		Entry entry1=entryBusinessInterface.findById(id);
		
		model.addObject("entry", entry1);
		
		return model;
	}
	
	//Update entry
	@RequestMapping(path="/updateentry")
	public ModelAndView entryupdate(@ModelAttribute("entry") Entry entry) {
		
		ModelAndView model=new ModelAndView("workupdatepage");
		
		entryBusinessInterface.update(entry);
		
		User user2=(User)session.getAttribute("user");
			
		List<Entry> entries=null;
			
		entries=entryBusinessInterface.findByUserId(user2.getId());
		    
		model.addObject("entries",entries);
			
		return model;	
	}	
	
	//Delete entry
	@RequestMapping("/delete")
    public ModelAndView deleteentry(@RequestParam("id") int id) {	
		
		ModelAndView model=new ModelAndView("workupdatepage");
		
		Entry entry=entryBusinessInterface.findById(id);
		
		entryBusinessInterface.delete(entry);
		
		User user2=(User)session.getAttribute("user");
		
		List<Entry> entries=null;
			
		entries=entryBusinessInterface.findByUserId(user2.getId());
		    
		model.addObject("entries",entries);
			
		return model;
		
	}
	
	
	//Signout 
	@RequestMapping("/signout")
	public ModelAndView signout() {
		
		ModelAndView model= new ModelAndView("login");
		
		session.invalidate();
		
		return model;
			
	}
//front end test-register
	@RequestMapping("/testregister")
	public String testregistermethode(@ModelAttribute("timeuser") Timeuser entry) {
		
		timesheetUserBusinessInterface.saveentry(entry);
		
		return "test";
		
	}
	
	//front end test-register	
	@RequestMapping(path="/userloginn",method=RequestMethod.POST)
	public String userloginmethod(@ModelAttribute("user") User user) {
		
		User user1=userBusinessInterface.findByUsername(user.getUsername());
		System.out.println(user1.getPassword());
		
		if(user1!=null && user1.getPassword().equals(user.getPassword())) {
			return "demo";
		}else {
			return "test";
		}

		
	}
		
}
