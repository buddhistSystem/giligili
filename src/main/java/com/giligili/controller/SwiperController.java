package com.giligili.controller;

import com.giligili.service.SwiperService;
import com.giligili.util.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/swiper")
public class SwiperController {

    @Resource
    private SwiperService swiperService;


    @RequestMapping("list")
    public Result listSwiper(){
        return swiperService.listSwiper();
    }
}
