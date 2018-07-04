package com.bala.azure.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.bala.azure.springmvc.dao.UserDao;
import com.bala.azure.springmvc.model.Login;
import com.bala.azure.springmvc.model.User;


public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;

  public void register(User user) {
    userDao.register(user);
  }

  public User validateUser(Login login) {
    return userDao.validateUser(login);
  }

}
