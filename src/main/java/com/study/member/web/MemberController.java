package com.study.member.web;

import com.study.member.service.IMemberService;
import com.study.member.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MemberController {

    @Inject
    IMemberService memberService;


    @GetMapping ("/member/memberList")
    public String memberList(Model model){

        List<MemberVO> memberList = memberService.getMemberList();
        model.addAttribute("memberList", memberList);

        return "member/memberList";
    }

    @RequestMapping("/member/memberView")
    public String memberView(Model model, String memId){
        MemberVO memberView = memberService.getMember(memId);

        model.addAttribute("memberView", memberView);

        return "member/memberView";
    }

    @RequestMapping("/member/memberEdit")
    public String memberEdit(Model model, String memId){
        MemberVO member = memberService.getMember(memId);
        model.addAttribute("member", member);
        return "member/memberEdit";
    }

    @PostMapping("/member/memberModify")
    public String memberModify(MemberVO member){
        memberService.updateMember(member);
        return "redirect:/member/memberList";
    }

    @PostMapping("/member/memberDelete.wow")
    public String memberDelete(MemberVO member){
        memberService.deleteMember(member);
        return "redirect:/member/memberList";
    }

}
