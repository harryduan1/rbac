package com.example.nacosprovider.service;

import com.example.nacosprovider.dao.RoleDao;
import com.example.nacosprovider.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    @Autowired
    private RoleDao roleDao;

    public List<Role> selectAll(){
        List<Role> roles = roleDao.selectList(null);
        return roles;
    }

    public void add(Role role){

    }

    public void edit(Role role){

    }

    public void del(int id){

    }
}
