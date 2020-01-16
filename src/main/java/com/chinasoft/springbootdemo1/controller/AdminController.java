package com.chinasoft.springbootdemo1.controller;

import com.chinasoft.springbootdemo1.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class AdminController {
  @Autowired
  private AdminService adminService;

@RequestMapping("/test")
@ResponseBody
    public Object test(HttpServletRequest request, HttpServletResponse response){

    int page=Integer.parseInt(request.getParameter("page"));
    int count=Integer.parseInt(request.getParameter("count"));
List<Map<String,Object>> list=adminService.selectTest1(page,count);
    return list;
}

}
