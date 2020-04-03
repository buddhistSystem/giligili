package com.giligili.service.impl;

import com.giligili.dao.SwiperMapper;
import com.giligili.entity.Swiper;
import com.giligili.service.SwiperService;
import com.giligili.util.Result;
import com.giligili.util.ResultUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SwiperServiceImpl implements SwiperService {

    @Resource
    private SwiperMapper swiperMapper;

    @Override
    public Result listSwiper() {
        List<Swiper> swiperList = swiperMapper.listSwiper();
        return ResultUtil.success(swiperList);
    }
}
