package com.study.code.service;

import com.study.code.dao.ICommDao;
import com.study.code.vo.CommVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
@Service
public class CommServiceImpl implements ICommService{
    @Inject
    ICommDao commDao;


    @Override
    public List<CommVO> CodeList(String ParentCode) {
        System.out.println(ParentCode);
        return commDao.CodeList(ParentCode);
    }
}
