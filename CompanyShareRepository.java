package com.example.Assingnment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.Assingnment.bean.CompanyShare;



public interface CompanyShareRepository extends JpaRepository<CompanyShare, Long> {
    @Query("select max(companyId) from CompanyShare")
    public Long findMaxCompanyId();
}