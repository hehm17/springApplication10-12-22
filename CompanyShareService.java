package com.gl.GlobalExchange.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.GlobalExchange.bean.CompanyShare;
import com.gl.GlobalExchange.repository.CompanyShareRepository;

@Service
public class CompanyShareService {
	 @Autowired
	 private CompanyShareRepository repository;
	 
	 public void save(CompanyShare company)
	 {
		 repository.save(company);
	 }
	 public List<CompanyShare> display()
	 {
		List<CompanyShare> list= repository.findAll();
		 return list;
	 }
	 public void delete(Long id)
	 {
		 repository.deleteById(id);
	 }
	 public CompanyShare findById(Long id)
		{
			return repository.getById(id);
		}

	 public Long generateId()
	 {
		 Long id=repository.findMax();
		 if(id==null)
		 {
             id=1000001l;
		 }
		 else
		 {
			 id=id+1;
		 }
		 return id;
	 }
	 
}
