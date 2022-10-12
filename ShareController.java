package com.example.Assingnment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.Assingnment.bean.CompanyShare;
import com.example.Assingnment.service.CompanyShareService;



public class ShareController {
	@Autowired
	private  CompanyShareService service;
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		ModelAndView mv=new ModelAndView("index");
		List <CompanyShare> companyShareList=service.findAll();
		mv.addObject("companyShareList",companyShareList);
		return mv;
	}
	@GetMapping("/companyShare")
	public ModelAndView showCompanyShareEntryPage() {
		CompanyShare companyShare=new CompanyShare();
		ModelAndView mv=new ModelAndView("CompanyShareEntryPage");
		mv.addObject("courseShareRecord",companyShare);
		return mv;

}
	@PostMapping("/companyShare")
	public ModelAndView saveNewCompanyShare(@ModelAttribute("companyShareRecord") CompanyShare companyShare) {
		long id=service.generateCompanyId();
		companyShare.setCompanyId(id);
		service.save(companyShare);
		return new ModelAndView("redirect:/index");
	}
	@GetMapping("/display-companyShare/{id}")
	public ModelAndView showACompanyShare(@PathVariable long id) {
		CompanyShare companyShare=service.findById(id);
		ModelAndView mv=new ModelAndView("CompanyShareReportPage");
		mv.addObject("companyShare",companyShare);
		return mv;
	}
	@GetMapping("/delete-company/{id}")
	public ModelAndView deleteACourses(@PathVariable long id) {
		service.delete(id);
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("/edit-company/{id}")
	public ModelAndView showCourseEditPage(@PathVariable long id) {
		CompanyShare companyShare=service.findById(id);
		ModelAndView mv=new ModelAndView("CompanyShareEditPage");
		mv.addObject("companyRecord",companyShare);
		return mv;
	}
	@PostMapping("/edit-company/company-edit")
	public ModelAndView editCourse(@ModelAttribute("companyRecord") CompanyShare companyShare) {
		service.save(companyShare);
		return new ModelAndView("redirect:/index");
	}
}

