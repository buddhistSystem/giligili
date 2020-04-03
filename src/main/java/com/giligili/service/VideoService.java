package com.giligili.service;

import com.giligili.util.Result;

public interface VideoService {

    Result listVideo();

    Result getVideoDetail(Integer id);

    Result listOther(Integer id);
}
