package com.yao.kfish.config;

import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;

@Configuration
class shiroConfig {

    //把注入了自己的Realm的defaultWebSecurityManager注入ShiroFilterFactoryBean
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(defaultWebSecurityManager());
        LinkedHashMap<String, String> filterMap = new LinkedHashMap<>();
        filterMap.put("/rest/users/*","perms[0]");
        filterMap.put("/rest/users","perms[0]");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterMap);
//        shiroFilterFactoryBean.setLoginUrl("/user/auth/403");
//        shiroFilterFactoryBean.setUnauthorizedUrl("/user/auth/403");
        return shiroFilterFactoryBean;
    }

    //把自己写的Realm注入defaultWebSecurityManager
    @Bean
    public DefaultWebSecurityManager defaultWebSecurityManager() {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();

        manager.setRealm(userRealm());
        return manager;
    }

    //把自己写的Realm放入spring容器中
    @Bean
    public UserRealm userRealm() {
        return new UserRealm();
    }

    //不加这一段，不执行doGetAuthorizationInfo 授权，不知道为什么
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(org.apache.shiro.mgt.SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }
}
