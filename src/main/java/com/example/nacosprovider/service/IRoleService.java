package com.example.nacosprovider.service;

import com.example.nacosprovider.po.Role;

import java.util.List;

public interface IRoleService {

    public List<Role> selectAll();

    public void add(Role role);

    public void edit(Role role);

    public void del(int id);
}
