package com.isolutions4u.indiciumtor.service;

import com.isolutions4u.indiciumtor.model.User;

public interface UserService {

    boolean saveUser(User user);

    User findUserByEmail(String email);
}
