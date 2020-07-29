package com.example.nacosprovider.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Role {

    @TableId(type = IdType.AUTO)
    private int id;

    private String name;

    private String remarks;
}
