package com.woowacourse.momo.category.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

import com.woowacourse.momo.category.domain.Category;
import com.woowacourse.momo.category.service.dto.response.CategoryResponse;
import com.woowacourse.momo.category.service.dto.response.CategoryResponseAssembler;

@RequiredArgsConstructor
@Transactional(readOnly = true)
@Service
public class CategoryService {

    public List<CategoryResponse> findAll() {
        return Category.getAll()
                .stream()
                .map(CategoryResponseAssembler::categoryResponse)
                .collect(Collectors.toList());
    }
}
