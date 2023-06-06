package com.yao.kfish.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.yao.kfish.pojo.User;
import com.yao.kfish.response.ResponseEntity;
import com.yao.kfish.service.impl.SysResourceServiceImpl;
import com.yao.kfish.service.impl.UserServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import java.util.Base64;
import java.util.HashMap;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@RestController
@RequestMapping("/rest")
public class UserController {
    @Autowired
    private UserServiceImpl service;
    @Autowired
    private SysResourceServiceImpl sysResourceService;
    //登录认证
    @RequestMapping("/authenticate")
    public ResponseEntity auth(@RequestBody User user){
        Subject subject= SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginId(), user.getPassword());
        HashMap<String, String> tokenObject = new HashMap<String,String>();
        try {
            subject.login(token);
            tokenObject.put("token",String.valueOf(token.hashCode()));
            return ResponseEntity.ok(tokenObject);
        }catch (UnknownAccountException e){
            subject.login(token);
            tokenObject.put("token",String.valueOf(token.hashCode()));
            return ResponseEntity.error("Sorry,账号或密码错误");
        }catch (IncorrectCredentialsException e){
            return ResponseEntity.error("Sorry,账号或密码错误");
        }
    }
    //获取当前用户信息，并联查用户拥有的权限菜单
    @RequestMapping("/users/current")
    public ResponseEntity getCurrent(){
        User curUser = (User)SecurityUtils.getSubject().getPrincipal();
        JSONObject UserData = (JSONObject) JSON.toJSON(curUser);
        UserData.put("menus",sysResourceService.getCurrent());
        return ResponseEntity.ok(UserData);
    }
    //添加用户
    @RequestMapping("/users/insertUser")
    @ResponseBody
    @CrossOrigin
    public ResponseEntity insertUser(@RequestBody User user){
        try {
            if(service.insertUser(user)==1)
                return ResponseEntity.ok();
            else
                return ResponseEntity.error("添加用户失败");
        }
        catch (Exception e){
            return ResponseEntity.error("添加用户失败");
        }
    }
    //删除用户
    @RequestMapping("/users/delUser")
    @ResponseBody
    @CrossOrigin
    public ResponseEntity delUser(@RequestBody User user){
        try {
            if(service.insertUser(user)==1)
                return ResponseEntity.ok();
            else
                return ResponseEntity.error("删除用户失败");
        }
        catch (Exception e){
            return ResponseEntity.error("删除用户失败");
        }
    }
    //更新用户
    @RequestMapping("/users/updateUser")
    @ResponseBody
    @CrossOrigin
    public ResponseEntity updateUser(@RequestBody User user){
        try {
            if(service.updateUser(user)==1)
                return ResponseEntity.ok();
            else
                return ResponseEntity.error("更新用户失败");
        }
        catch (Exception e){
            return ResponseEntity.error("更新用户失败");
        }
    }
    //分页查询用户
    @RequestMapping("/users")
    @ResponseBody
    @CrossOrigin
    public ResponseEntity getUserPage(@RequestParam int current,@RequestParam int size){
        try {
                return ResponseEntity.ok(service.getUserPage(current,size));
        }
        catch (Exception e){
            return ResponseEntity.error("查询失败");
        }
    }

}
