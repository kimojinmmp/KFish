package com.yao.kfish.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yao.kfish.pojo.SysResource;
import com.yao.kfish.mapper.SysResourceMapper;
import com.yao.kfish.service.ISysResourceService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 资源表 服务实现类
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@Service
public class SysResourceServiceImpl extends ServiceImpl<SysResourceMapper, SysResource> implements ISysResourceService {
    @Autowired
    private SysResourceMapper sysResourceMapper;
    /*从数据库查出所有主菜单栏的接口*/
    @Override
    public List<SysResource> getCurrent() {
        QueryWrapper<SysResource> objectQueryWrapper = new QueryWrapper<>();
        objectQueryWrapper.eq("type",0);
        List<SysResource> recruitInfoList = sysResourceMapper.selectList(objectQueryWrapper);
        return recruitInfoList;
    }
}
