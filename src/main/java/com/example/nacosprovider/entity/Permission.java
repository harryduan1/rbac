package com.example.nacosprovider.entity;

import lombok.Data;

@Data
public class Permission {

    private int id;

    private int pid;

    private String title;

    private String remarks;
}
