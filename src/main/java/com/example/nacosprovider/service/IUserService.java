package com.example.nacosprovider.service;

import com.example.nacosprovider.po.User;

import java.util.List;

public interface IUserService {

    public List<User> selectAll();

    public String add(User user);

    public String edit(User user);

    public String del(int id);
}
