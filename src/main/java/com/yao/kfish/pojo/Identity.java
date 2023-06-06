package com.yao.kfish.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * <p>
 * 
 * </p>
 *
 * @author kimoji
 * @since 2023-06-05
 */
@TableName("tb_identity")
@ApiModel(value = "Identity对象", description = "")
public class Identity {

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String identityName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIdentityName() {
        return identityName;
    }

    public void setIdentityName(String identityName) {
        this.identityName = identityName;
    }

    @Override
    public String toString() {
        return "Identity{" +
        "id=" + id +
        ", identityName=" + identityName +
        "}";
    }
}
