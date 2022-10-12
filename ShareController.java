package com.gl.GlobalExchange.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.gl.GlobalExchange.bean.CompanyShare;
import com.gl.GlobalExchange.service.CompanyShareService;

@RestController
public class ShareContoller {
	
	@Autowired
	private CompanyShareService service;
	
	@GetMapping("/index")
	public ModelAndView findIndexPage()
	{
		ModelAndView mv=new ModelAndView("index");
		List list=service.display();
		mv.addObject("Company",list);
		return mv;	
	}
	@GetMapping("/entry")
	public ModelAndView entryPage()
	{
		CompanyShare company=new CompanyShare();
		ModelAndView mv=new ModelAndView("CompanyShareEntryPage");
		mv.addObject("shareRecord",company);
		return mv;
	}
	@PostMapping("/company-entry")
	public ModelAndView saveNewCompany(@ModelAttribute("shareRecord") CompanyShare company)
	{
	long id=service.generateId();
	company.setCompanyId(id);
	service.save(company);
	return new ModelAndView("redirect:/index");
	}
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable long id)
	{
		ModelAndView mv=new ModelAndView("redirect:/index");
		service.delete(id);
		return mv;
	}

	@GetMapping("/edit/{id}")
	public ModelAndView showCompanyEdit(@PathVariable long id)
	{
		CompanyShare company=service.findById(id);
		ModelAndView mv=new ModelAndView("CompanyShareEditPage");
		mv.addObject("shareRecord",company);
		return mv;
	}
	
	@PostMapping("/edit/edit1")
	public ModelAndView editCourse(@ModelAttribute("shareRecord") CompanyShare company)
	{
	service.save(company);
	return new ModelAndView("redirect:/index");
	}


}
