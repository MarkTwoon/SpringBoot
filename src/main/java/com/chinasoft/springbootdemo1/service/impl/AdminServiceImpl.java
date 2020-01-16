package com.chinasoft.springbootdemo1.service.impl;

import com.chinasoft.springbootdemo1.dao.AdminMapper;
import com.chinasoft.springbootdemo1.service.AdminService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
@Autowired
 private AdminMapper adminMapper;

 @Override
 public List<Map<String, Object>> selectTest() {
  return adminMapper.selectTest();
 }

 @Override
 public List<Map<String, Object>> selectTest1(int page, int count) {
  PageHelper.startPage(page,count);
  return adminMapper.selectTest();
 }

}
