package com.example.nacosprovider.service.impl;

import com.example.nacosprovider.mapper.UserMapper;
import com.example.nacosprovider.po.User;
import com.example.nacosprovider.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> selectAll(){
        List<User> users = userMapper.selectList(null);
//        for(User user : users){
//            System.out.println(user);
//        }
        return users;
    }

    public String add(User user){
        int i = userMapper.insert(user);
        if(i == 1){
            return "添加用户成功！";
        }
        return "添加用户失败！";
    }

    public String edit(User user){
        int i = userMapper.updateById(user);
        if (i ==1){
            return "修改成功！";
        }
        return "修改失败，请重试！";
    }

    public String del(int id){
        int i = userMapper.deleteById(id);
        if (i ==1){
            return "删除成功！";
        }
        return "删除失败！";
    }
}
