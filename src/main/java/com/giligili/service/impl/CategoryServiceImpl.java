package com.giligili.service.impl;

import com.giligili.dao.CategoryMapper;
import com.giligili.entity.Category;
import com.giligili.service.CategoryService;
import com.giligili.util.Result;
import com.giligili.util.ResultUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public Result listCategory() {
        List<Category> categoryList = categoryMapper.listCategory();
        return ResultUtil.success(categoryList);
    }
}
