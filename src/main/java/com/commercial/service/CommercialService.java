package com.commercial.service;

import java.util.List;

import com.commercial.entity.Commercial;
import com.commercial.entity.Expenses;

public interface CommercialService {

	List<Commercial> getCommercial(String companyName, String domainName, String projectName);

	Expenses getExpensesDetails(String companyName, String domainName, String projectName);

}
