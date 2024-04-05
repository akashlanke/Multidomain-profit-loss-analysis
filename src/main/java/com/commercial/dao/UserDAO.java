package com.commercial.dao;

import com.commercial.entity.User;


public interface UserDAO {

    /**
     * Method to add {@link Customer} object in database.
     * @param customer - {@link Customer} object which has to add in database.
     */
    boolean addUser(User customer);

    /**
     * @param id - id of the {@link Customer} object.
     * @return - {@link Customer} object which is retrieved from database.
     */
    User validateUser(String uname, String password);
    
    boolean checkExistingUser(String uname);

}
