package com.yao.kfish.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yao.kfish.pojo.SysResource;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 资源表 服务类
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@Service
public interface ISysResourceService extends IService<SysResource> {
    //获取当前用户权限菜单
    public List<SysResource> getCurrent();
}
