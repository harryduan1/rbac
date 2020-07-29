package com.example.nacosprovider.controller;

import com.example.nacosprovider.po.Role;
import com.example.nacosprovider.service.IRoleService;
import com.example.nacosprovider.service.impl.RoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private IRoleService iRoleService;

    @GetMapping("/selectAll")
    public List<Role> selectAll(){
        return iRoleService.selectAll();
    }

    public void add(Role role){

    }

    public void edit(Role role){

    }

    public void del(int id){

    }
}
