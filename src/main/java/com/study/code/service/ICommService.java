package com.study.code.service;

import com.study.code.vo.CommVO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ICommService {
    public List<CommVO> CodeList(String ParentCode);


}
