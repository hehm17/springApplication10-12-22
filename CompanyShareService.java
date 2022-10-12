package com.example.Assingnment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Assingnment.bean.CompanyShare;
import com.example.Assingnment.repository.CompanyShareRepository;



@Service
public class CompanyShareService {
	@Autowired
	private CompanyShareRepository repository;
	
	public void save(CompanyShare companyshare) {
		repository.save(companyshare);
	}
	public List<CompanyShare> findAll(){
		return repository.findAll();
	}
	public CompanyShare findById(Long id){
		return repository.getById(id);
	}
	public Long generateCompanyId() {
		Long val=repository.findMaxCompanyId();
		if(val==null)
			val=101L;
		else
			val=val+1;
		return val;
	}
	public void delete(long id) {
		repository.deleteById(id);
	}

}
		
		
	