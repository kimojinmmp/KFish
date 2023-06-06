package com.yao.kfish.config;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.yao.kfish.mapper.UserMapper;
import com.yao.kfish.pojo.User;
import com.yao.kfish.service.impl.UserServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import static net.sf.jsqlparser.util.validation.metadata.NamedObject.user;


public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserServiceImpl userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if(user != null){
            //把用户里有的权限都给他赋予上
//            Set<String> roles = new HashSet<>();
//            roles.add(user.getIdentity());
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            info.addStringPermission(user.getIdentity());
            return info;
        }
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //从token中获取用户名，取出用户
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        User user= userService.getCurrentUser(token.getUsername());
        if(user != null)
        {
            //没有传token进去，不知道如何进行密码比对的，可以打断点自己分析下
            return new SimpleAuthenticationInfo(user,user.getPassword(),getName());
        }
        return null;
    }
}
