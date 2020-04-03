package com.giligili.controller;

import com.giligili.service.VideoService;
import com.giligili.util.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/video")
public class VideoController {

    @Resource
    private VideoService videoService;

    @RequestMapping("list")
    public Result listVideo() {
        return videoService.listVideo();
    }

    @RequestMapping("detail")
    public Result getVideoDetail(Integer id) {
        return videoService.getVideoDetail(id);
    }


    @RequestMapping("otherList")
    public Result listOther(Integer id) {
        return videoService.listOther(id);
    }

}
