package com.commercial.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commercial.dao.DomainDAO;
import com.commercial.entity.Domain;

@Service
public class DomainServiceImpl implements DomainService {

	@Autowired
	private DomainDAO domainDAO;

	@Override
	@Transactional
	public List<Domain> getAllDomains(String companyName) {
		return domainDAO.getAllDomains(companyName);
	}

}
