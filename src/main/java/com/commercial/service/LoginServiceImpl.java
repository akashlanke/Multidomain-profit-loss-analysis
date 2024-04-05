package com.commercial.service;

import com.commercial.dao.UserDAO;
import com.commercial.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class LoginServiceImpl implements LoginService {

	private UserDAO userDAO;

	@Autowired
	public void setCustomerDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	@Transactional
	public boolean addUser(User user) {
		boolean userpresent = userDAO.checkExistingUser(user.getUname());
		if (userpresent)

		{
			return false;
		} else {

			return userDAO.addUser(user);
		}
	}

	@Override
	@Transactional
	public User validateUser(String uname, String password) {
		return userDAO.validateUser(uname, password);
	}
}
