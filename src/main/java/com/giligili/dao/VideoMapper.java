package com.giligili.dao;

import com.giligili.entity.Video;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

    List<Video> listVideo();

    Video getVideoDetail(Integer id);

    List<Video> listOther(@Param("categoryId") Integer categoryId,@Param("id") Integer id);
}