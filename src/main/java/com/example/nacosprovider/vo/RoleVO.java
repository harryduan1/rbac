package com.example.nacosprovider.vo;

import com.example.nacosprovider.entity.Role;
import com.example.nacosprovider.entity.RolePermission;
import lombok.Data;

import java.util.List;

@Data
public class RoleVO extends Role {

    private List<RolePermission> rolePermissionList;
}
