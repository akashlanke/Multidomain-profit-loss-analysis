package com.commercial.dao;

import java.util.List;

import com.commercial.entity.Domain;


public interface DomainDAO {
	List<Domain> getAllDomains(String companyName);
}
