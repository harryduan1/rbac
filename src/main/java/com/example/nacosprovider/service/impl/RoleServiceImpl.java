package com.example.nacosprovider.service.impl;

import com.example.nacosprovider.mapper.RoleMapper;
import com.example.nacosprovider.po.Role;
import com.example.nacosprovider.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private RoleMapper roleMapper;

    public List<Role> selectAll(){
        List<Role> roles = roleMapper.selectList(null);
        return roles;
    }

    public void add(Role role){

    }

    public void edit(Role role){

    }

    public void del(int id){

    }
}
