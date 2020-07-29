package com.example.nacosprovider.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.nacosprovider.entity.User;
import org.springframework.stereotype.Component;

@Component
public interface UserDao extends BaseMapper<User> {
}
