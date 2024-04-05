package com.commercial.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commercial.entity.Project;

import java.util.List;


@Repository
public class ProjectDAOImpl implements ProjectDAO {

	private SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public List<Project> getAllProjects(String companyName, String domainName) {
		Session session = factory.getCurrentSession(); // get hibernate session.
		Criteria cr = session.createCriteria(Project.class);
		Criterion cr1=Restrictions.eq("companyname", companyName);
		Criterion cr2=Restrictions.eq("domainname", domainName);
		cr.add(cr1);
		cr.add(cr2);
		return cr.list();
	}

}
