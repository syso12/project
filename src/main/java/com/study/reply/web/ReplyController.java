package com.study.reply.web;

import com.study.paging.vo.PagingVO;
import com.study.reply.service.IReplyService;
import com.study.reply.vo.ReplyVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;

@Controller
public class ReplyController {
    @Inject
    IReplyService replyService;

    @ResponseBody
    @RequestMapping("/reply/replyList")
    public List<ReplyVO> replyList(PagingVO paging, int reParentNo) {

        return replyService.replyList(paging, reParentNo);
    }

    @RequestMapping("/freeBoard/replyList")
    public String freeReplyList(Model model, PagingVO paging, int reParentNo) {
        List<ReplyVO> replyList = replyService.replyList(paging, reParentNo);
        model.addAttribute("replyList", replyList);
        return "freeBoard/replyList";
    }

    @ResponseBody
    @RequestMapping("/reply/updateReplyList")
    public void updateReply(ReplyVO reply) {
        replyService.updateReply(reply);
    }

    @ResponseBody
    @RequestMapping("/reply/deleteReplyList")
    public void deleteReply(ReplyVO reply) {
        replyService.deleteReply(reply);
    }

    @ResponseBody
    @RequestMapping("/reply/registerReplyList")
    public void registerReplyList(@ModelAttribute("reply") ReplyVO reply) {
        replyService.insertReply(reply);
    }


}
