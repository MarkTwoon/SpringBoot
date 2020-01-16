package com.chinasoft.springbootdemo1.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
    public List<Map<String,Object>> selectTest();
    public List<Map<String,Object>> selectTest1(int page, int count);
}
