package com.bala.azure.springmvc.dao;

import com.bala.azure.springmvc.model.Login;
import com.bala.azure.springmvc.model.User;

public interface UserDao {
  void register(User user);
  User validateUser(Login login);
}
