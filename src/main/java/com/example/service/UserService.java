package com.example.service;

import com.example.entity.User;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User getById(int id);

    void save(User user);

    void update(User user);

    void delete(int id);

}
