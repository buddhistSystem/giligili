package com.giligili.controller;

import com.giligili.service.CategoryService;
import com.giligili.util.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/category")
public class CategoryController {
    @Resource
    private CategoryService categoryService;

    @RequestMapping("list")
    public Result listCategory(){
        return categoryService.listCategory();
    }
}
