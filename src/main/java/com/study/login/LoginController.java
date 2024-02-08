package com.study.login;

import com.study.member.service.IMemberService;
import com.study.member.vo.MemberVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Inject
    IMemberService memberService;

    @GetMapping("/login/login.wow")
    public String Login(){
        return "login/login";
    }

    @PostMapping("/login/login.wow")
    public String memberLogin(@RequestParam(value = "memId") String memId, @RequestParam(value = "memPw") String memPw,
                              Model model, HttpSession session){

        MemberVO member = memberService.memberLogin(memId,memPw);

        if(member != null){

            session.setAttribute("member", member);
            return "redirect:/";
        }else{
            System.out.println("아이디 혹은 비밀번호 오류입니다.");
            return "login/login";
        }
    }

    @GetMapping ("/login/join.wow")
    public String Join(){
        return "login/join";
    }

    @PostMapping("/login/join.wow")
    public String memberJoin(Model model, MemberVO member){

        memberService.memberJoin(member);


        return "redirect:/";
    }

    @RequestMapping("/login/logout.wow")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }









}
