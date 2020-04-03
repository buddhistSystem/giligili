package com.giligili.em;

import lombok.Getter;

/**
 * @Author: Administrator
 * @Date: 2019/12/2 0002 09:41
 * @Description:
 */
@Getter
public enum ResultEnum {

    PARAM_ERROR(1001,"参数错误")
    ;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private Integer code;

    private String msg;



}
