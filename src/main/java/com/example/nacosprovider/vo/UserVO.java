package com.example.nacosprovider.vo;

import com.example.nacosprovider.entity.User;
import com.example.nacosprovider.entity.UserRole;
import lombok.Data;

import java.util.List;

@Data
public class UserVO extends User {

    private List<UserRole> userRoleList;
}
