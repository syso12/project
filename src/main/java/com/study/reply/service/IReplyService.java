package com.study.reply.service;

import com.study.paging.vo.PagingVO;
import com.study.reply.vo.ReplyVO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IReplyService {
    public List<ReplyVO> replyList(PagingVO paging, int reParentNo);

    public void updateReply(ReplyVO reply);

    public void deleteReply(ReplyVO reply);

    public void insertReply(ReplyVO reply);
}
