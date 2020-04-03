package com.giligili.service.impl;

import com.giligili.dao.VideoMapper;
import com.giligili.entity.Video;
import com.giligili.service.VideoService;
import com.giligili.util.Result;
import com.giligili.util.ResultUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Resource
    private VideoMapper videoMapper;
    @Override
    public Result listVideo() {
        List<Video> videoList = videoMapper.listVideo();
        return ResultUtil.success(videoList);
    }

    @Override
    public Result getVideoDetail(Integer id) {
        Video video = videoMapper.getVideoDetail(id);
        return ResultUtil.success(video);
    }

    @Override
    public Result listOther(Integer id) {
        Video video = videoMapper.getVideoDetail(id);
        List<Video> otherList = videoMapper.listOther(video.getCategoryId(),id);
        return ResultUtil.success(otherList);
    }
}
