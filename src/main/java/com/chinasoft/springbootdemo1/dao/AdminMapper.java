package com.chinasoft.springbootdemo1.dao;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
@Component
public interface AdminMapper {
public List<Map<String,Object>> selectTest();
public List<Map<String,Object>> selectTest1(int page, int count);
}
