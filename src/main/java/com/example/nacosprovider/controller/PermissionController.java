package com.example.nacosprovider.controller;

import com.example.nacosprovider.entity.Permission;
import com.example.nacosprovider.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/permission")
public class PermissionController {

    public List<Permission> selectAll(){
        return null;
    }

    @PostMapping("/add")
    public String add(@RequestBody Permission permission){
        return null;
    }

    @PostMapping("/edit")
    public String edit(@RequestBody Permission permission){
        return null;
    }

    @GetMapping("/del/{id}")
    public String del(@PathVariable int id){
        return null;
    }
}
