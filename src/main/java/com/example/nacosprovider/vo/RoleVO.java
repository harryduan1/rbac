package com.example.nacosprovider.vo;

import com.example.nacosprovider.po.Role;
import com.example.nacosprovider.po.RolePermission;
import lombok.Data;

import java.util.List;

@Data
public class RoleVO extends Role {

    private List<RolePermission> rolePermissionList;
}
