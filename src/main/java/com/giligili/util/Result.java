package com.giligili.util;

import lombok.Getter;
import lombok.Setter;

/**
 * @Author: Administrator
 * @Date: 2019/12/2 0002 09:33
 * @Description:
 */
@Getter
@Setter
public class Result<T> {

    private Integer code;

    private String msg;

    private T data;

}
