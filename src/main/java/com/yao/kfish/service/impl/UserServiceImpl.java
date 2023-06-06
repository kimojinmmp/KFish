package com.yao.kfish.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yao.kfish.pojo.User;
import com.yao.kfish.mapper.UserMapper;
import com.yao.kfish.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getCurrentUser(String userName) {
        QueryWrapper<User> objectQueryWrapper = new QueryWrapper<User>();
        objectQueryWrapper.eq("login_id",userName);
        User user = userMapper.selectOne(objectQueryWrapper);
        return user;
    }
    public int insertUser(User user){
        int insert = userMapper.insert(user);
        return insert;
    }
    public int delUser(User user){
        int i = userMapper.deleteById(user);
        return i;
    }
    public int updateUser(User user){
        int i = userMapper.updateById(user);
        return i;
    }
    @Override
    public Page<User> getUserPage(int current, int size) {
        QueryWrapper<User> objectQueryWrapper = new QueryWrapper<>();
        Page<User> userPage = userMapper.selectPage(new Page<>(current, size), objectQueryWrapper);
        return userPage;
    }
}
