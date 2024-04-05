package com.commercial.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commercial.entity.Commercial;
import com.commercial.entity.Expenses;

@Repository
public class CommercialDaoImpl implements CommercialDao {

	private SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public List<Commercial> getCommercial(String companyName, String domainName, String projectName) {
		List<Commercial> commercials = new ArrayList<>();
		try {
			Session session = factory.getCurrentSession(); // get hibernate
															// session.
			Criteria cr = session.createCriteria(Commercial.class);
			Criterion cr1 = Restrictions.eq("companyname", companyName);
			Criterion cr2 = Restrictions.eq("domainname", domainName);
			Criterion cr3 = Restrictions.eq("projectname", projectName);
			cr.add(cr1);
			cr.add(cr2);
			cr.add(cr3);
			commercials = cr.list();

			Criteria criteria = session.createCriteria(Expenses.class);
			Criterion criterion1 = Restrictions.eq("companyname", companyName);
			Criterion criterion2 = Restrictions.eq("domainname", domainName);
			Criterion criterion3 = Restrictions.eq("projectname", projectName);
			criteria.add(criterion1);
			criteria.add(criterion2);
			criteria.add(criterion3);
			List<Expenses> expensesList=criteria.list();
			if(expensesList.size()>0)
			{
				Expenses expenses= expensesList.get(0);
				int expenseAmount =expenses.getMaintenance()+expenses.getMarketing()+expenses.getSalary() +expenses.getTaxes()+expenses.getWifi();
				System.out.println("The expenseAmount for project -" +projectName + " is "+expenseAmount);
				if(expenseAmount>0)
				{
					commercials.stream().forEach(x->x.setExpenses(expenseAmount));
				}
			}
		} catch (Exception e) {
			System.out.println("Exception occoured in getCommercial " + e.getMessage());
		}

		return commercials;
	}

	@Override
	public Expenses getExpensesDetails(String companyName, String domainName, String projectName) {
		Session session = factory.getCurrentSession(); // get hibernate
		Criteria criteria = session.createCriteria(Expenses.class);
		Criterion criterion1 = Restrictions.eq("companyname", companyName);
		Criterion criterion2 = Restrictions.eq("domainname", domainName);
		Criterion criterion3 = Restrictions.eq("projectname", projectName);
		criteria.add(criterion1);
		criteria.add(criterion2);
		criteria.add(criterion3);
		List<Expenses> expensesList=criteria.list();
		if(expensesList.size()>0)
		{
			return expensesList.get(0);
		}
		return null;
	}
}
