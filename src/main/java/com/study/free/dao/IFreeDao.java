package com.study.free.dao;

import com.study.free.vo.FreeVO;
import com.study.paging.vo.PagingVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface IFreeDao {

    public int getTotalRowCount(@Param("paging")PagingVO paging);

    public List<FreeVO> freeList (@Param("paging")PagingVO paging);

    public FreeVO getFreeView(int boNo);

    public int updateBoard(FreeVO free);

    public int deleteBoard(FreeVO free);

    public int registerBoard(FreeVO free);
}
