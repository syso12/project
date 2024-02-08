package com.study.free.service;

import com.study.free.dao.IFreeDao;
import com.study.free.vo.FreeVO;
import com.study.paging.vo.PagingVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class IFreeServiceImpl implements IFreeService {
    @Inject
    IFreeDao freeDao;


    @Override
    public List<FreeVO> freeList(PagingVO paging) {
        int totalRowCount = freeDao.getTotalRowCount(paging);
        paging.setTotalRowCount(totalRowCount);
        paging.pageSetting();
        return freeDao.freeList(paging);
    }

    @Override
    public FreeVO getFreeView(int boNo) {
        FreeVO free = freeDao.getFreeView(boNo);
        return free;
    }

    @Override
    public void updateBoard(FreeVO free) {
        FreeVO freeVO = freeDao.getFreeView(free.getBoNo());
        if (freeVO.getBoPass().equals(free.getBoPass())) {
            freeDao.updateBoard(free);
        } else {
            System.out.println("비밀번호 오류");
        }

    }

    @Override
    public void deleteBoard(FreeVO free) {
        FreeVO freeVO = freeDao.getFreeView(free.getBoNo());
        System.out.println("컨트롤러삭제됨");
        if (freeVO.getBoPass().equals(free.getBoPass())) {
            freeDao.deleteBoard(free);
        } else {
            System.out.println("비밀번호 오류");
        }

    }

    @Override
    public void registerBoard(FreeVO free) {
        freeDao.registerBoard(free);


    }
}
