package com.study.free.service;

import com.study.free.vo.FreeVO;
import com.study.paging.vo.PagingVO;

import java.util.List;

public interface IFreeService {

    public List<FreeVO> freeList (PagingVO paging);

    public FreeVO getFreeView(int boNo);

    public void updateBoard(FreeVO free);

    public void deleteBoard(FreeVO free);

    public void registerBoard(FreeVO free);
}
