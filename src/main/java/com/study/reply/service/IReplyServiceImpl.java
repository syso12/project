package com.study.reply.service;

import com.study.paging.vo.PagingVO;
import com.study.reply.dao.IReplyDao;
import com.study.reply.vo.ReplyVO;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.inject.Inject;
import java.util.List;
@Service
public class IReplyServiceImpl implements IReplyService{

    @Inject
    IReplyDao replyDao;


    @Override
    public List<ReplyVO> replyList(PagingVO paging, int reParentNo) {
        return replyDao.replyList(paging,reParentNo);
    }

    @Override
    public void updateReply(ReplyVO reply) {
        replyDao.updateReply(reply);
    }

    @Override
    public void deleteReply(ReplyVO reply) {
        replyDao.deleteReply(reply);
    }

    @Override
    public void insertReply(ReplyVO reply) {
        replyDao.insertReply(reply);
    }


}


