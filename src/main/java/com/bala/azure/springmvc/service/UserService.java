package com.bala.azure.springmvc.service;

import com.bala.azure.springmvc.model.Login;
import com.bala.azure.springmvc.model.User;

public interface UserService {

  void register(User user);

  User validateUser(Login login);
}