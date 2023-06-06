package com.yao.kfish.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * <p>
 * 资源表
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@TableName("sys_resource")
@ApiModel(value = "SysResource对象", description = "资源表")
public class SysResource {

    @ApiModelProperty("主键id")
    private Long resourceId;

    @ApiModelProperty("资源名称名字")
    private String resourceName;

    @ApiModelProperty("前端组件路径")
    private String component;

    @ApiModelProperty("资源菜单图标（mdi）")
    private String icon;

    @ApiModelProperty("父ID")
    private String parentId;

    @ApiModelProperty("资源类型")
    private Integer type;

    @ApiModelProperty("资源路径")
    private String path;

    @ApiModelProperty("操作类型")
    private String operation;

    @ApiModelProperty("资源代码")
    private String resourceCode;

    @ApiModelProperty("创建时间")
    private LocalDateTime createdTime;

    @ApiModelProperty("创建人")
    private Long createdBy;

    @ApiModelProperty("最后的更新时间")
    private LocalDateTime lastModifiedTime;

    @ApiModelProperty("最后的更新人")
    private Long lastModifiedBy;

    @ApiModelProperty("是否隐藏")
    private Integer hidden;


    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }

    public String getResourceName() {
        return resourceName;
    }

    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getResourceCode() {
        return resourceCode;
    }

    public void setResourceCode(String resourceCode) {
        this.resourceCode = resourceCode;
    }

    public LocalDateTime getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(LocalDateTime createdTime) {
        this.createdTime = createdTime;
    }

    public Long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }

    public LocalDateTime getLastModifiedTime() {
        return lastModifiedTime;
    }

    public void setLastModifiedTime(LocalDateTime lastModifiedTime) {
        this.lastModifiedTime = lastModifiedTime;
    }

    public Long getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(Long lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    public Integer getHidden() {
        return hidden;
    }

    public void setHidden(Integer hidden) {
        this.hidden = hidden;
    }

    @Override
    public String toString() {
        return "SysResource{" +
        "resourceId=" + resourceId +
        ", resourceName=" + resourceName +
        ", component=" + component +
        ", icon=" + icon +
        ", parentId=" + parentId +
        ", type=" + type +
        ", path=" + path +
        ", operation=" + operation +
        ", resourceCode=" + resourceCode +
        ", createdTime=" + createdTime +
        ", createdBy=" + createdBy +
        ", lastModifiedTime=" + lastModifiedTime +
        ", lastModifiedBy=" + lastModifiedBy +
        ", hidden=" + hidden +
        "}";
    }
}
