package com.commercial.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commercial.entity.Domain;

import java.util.List;


@Repository
public class DomainDAOImpl implements DomainDAO {

	private SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public List<Domain> getAllDomains(String companyName) {
		Session session = factory.getCurrentSession(); // get hibernate session.
		
		Criteria cr = session.createCriteria(Domain.class);
		Criterion cr1=Restrictions.eq("companyname", companyName);
		cr.add(cr1);
		return cr.list();
	}

}
