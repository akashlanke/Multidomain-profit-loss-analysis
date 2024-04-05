package com.commercial.dao;

import java.util.List;

import com.commercial.entity.Commercial;
import com.commercial.entity.Expenses;

public interface CommercialDao {
	List<Commercial> getCommercial(String companyName, String domainName, String projectName);

	Expenses getExpensesDetails(String companyName, String domainName, String projectName);
}
