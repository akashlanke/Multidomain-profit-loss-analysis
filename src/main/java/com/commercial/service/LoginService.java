package com.commercial.service;

import com.commercial.entity.User;

public interface LoginService {

	boolean addUser(User customer);

	User validateUser(String uname, String password);

}
