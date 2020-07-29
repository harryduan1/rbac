package com.example.nacosprovider.controller;

import com.example.nacosprovider.po.User;
import com.example.nacosprovider.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @GetMapping("/selectAll")
    public List<User> selectAll(){
        return userService.selectAll();
    }

    @PostMapping("/add")
    public String add(@RequestBody User user){
        return userService.add(user);
    }

    @PostMapping("/edit")
    public String edit(@RequestBody User user){
        return userService.edit(user);
    }

    @GetMapping("/del/{id}")
    public String del(@PathVariable int id){
        return userService.del(id);
    }
}
