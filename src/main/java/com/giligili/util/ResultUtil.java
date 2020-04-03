package com.giligili.util;


import com.giligili.em.ResultEnum;

public class ResultUtil {

    public static Result success(Object object) {
        Result result = new Result();
        result.setCode(0);
        result.setMsg("成功");
        result.setData(object);
        return result;
    }

    public static Result success() {
        return success(null);
    }


    public static Result error(ResultEnum paramError) {
        Result result = new Result();
        result.setCode(paramError.getCode());
        result.setMsg(paramError.getMsg());
        return result;
    }


    public static Result error(Integer code, String msg) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }

    public static Result error() {
        Result result = new Result();
        result.setCode(-1);
        result.setMsg("失败");
        return result;
    }
}
