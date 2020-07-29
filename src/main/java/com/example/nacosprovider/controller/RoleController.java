package com.example.nacosprovider.controller;

import com.example.nacosprovider.entity.Role;
import com.example.nacosprovider.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @GetMapping("/selectAll")
    public List<Role> selectAll(){
        return roleService.selectAll();
    }

    public void add(Role role){

    }

    public void edit(Role role){

    }

    public void del(int id){

    }
}
