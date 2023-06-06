package com.yao.kfish.service.impl;

import com.yao.kfish.pojo.Identity;
import com.yao.kfish.mapper.IdentityMapper;
import com.yao.kfish.service.IIdentityService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
public class IdentityServiceImpl extends ServiceImpl<IdentityMapper, Identity> implements IIdentityService {

}
