package com.yao.kfish.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yao.kfish.pojo.User;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@Service
public interface IUserService extends IService<User> {
    public User getCurrentUser(String userName);
    public int insertUser(User user);
    public int delUser(User user);
    public int updateUser(User user);
    public Page<User> getUserPage(int current, int size);
}
