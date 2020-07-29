package com.example.nacosprovider.service;

import com.example.nacosprovider.dao.UserDao;
import com.example.nacosprovider.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public List<User> selectAll(){
        List<User> users = userDao.selectList(null);
//        for(User user : users){
//            System.out.println(user);
//        }
        return users;
    }

    public String add(User user){
        int i = userDao.insert(user);
        if(i == 1){
            return "添加用户成功！";
        }
        return "添加用户失败！";
    }

    public String edit(User user){
        int i = userDao.updateById(user);
        if (i ==1){
            return "修改成功！";
        }
        return "修改失败，请重试！";
    }

    public String del(int id){
        int i = userDao.deleteById(id);
        if (i ==1){
            return "删除成功！";
        }
        return "删除失败！";
    }
}
