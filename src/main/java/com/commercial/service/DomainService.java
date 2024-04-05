package com.commercial.service;

import java.util.List;

import com.commercial.entity.Domain;

public interface DomainService {

	List<Domain> getAllDomains(String companyName);
}
