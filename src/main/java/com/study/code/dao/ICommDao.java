package com.study.code.dao;

import com.study.code.vo.CommVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface ICommDao {

    public List<CommVO> CodeList(String ParentCode);

}
