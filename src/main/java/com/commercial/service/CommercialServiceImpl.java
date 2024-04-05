package com.commercial.service;

import com.commercial.dao.CommercialDao;
import com.commercial.entity.Commercial;
import com.commercial.entity.Expenses;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CommercialServiceImpl implements CommercialService {
	@Autowired
	private CommercialDao commercialDao;

	@Override
	@Transactional
	public List<Commercial> getCommercial(String companyName, String domainName, String projectName) {
		List<Commercial> cmps = commercialDao.getCommercial(companyName, domainName, projectName);
		return cmps;
	}

	@Override
	@Transactional
	public Expenses getExpensesDetails(String companyName, String domainName, String projectName) {
		return commercialDao.getExpensesDetails(companyName,domainName,projectName);
	}

}
