package com.example.nacosprovider.vo;

import com.example.nacosprovider.po.User;
import com.example.nacosprovider.po.UserRole;
import lombok.Data;

import java.util.List;

@Data
public class UserVO extends User {

    private List<UserRole> userRoleList;
}
