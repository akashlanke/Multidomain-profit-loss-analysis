package com.commercial.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commercial.entity.User;


@Repository
public class UserDAOImpl implements UserDAO {

	private SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public boolean addUser(User user) {
		
		Session session = factory.getCurrentSession();
        String uname=(String) session.save(user);
        
        return uname!=null?true:false;

	}

	@Override
	public User validateUser(String uname, String password) {
		
		 Session session = factory.getCurrentSession(); // get hibernate session.
	        String queryString = "from User where uname= "+ "'"+ uname +"'"+ " and password ="+"'"+password +"'";
	        org.hibernate.Query <User> query = session.createQuery(queryString, User.class); // create query.
	        return query.uniqueResult(); 
	}

	@Override
	public boolean checkExistingUser(String uname) {
		Session session = factory.getCurrentSession(); // get hibernate session.
		String queryString = "from User where uname= "+ "'"+ uname +"'";
	       
		org.hibernate.Query query = session.createQuery(queryString);
		
		if(query.uniqueResult()!=null)
		{
			return true;
		}else
		{
			return false;	
		}
		
	}
}
