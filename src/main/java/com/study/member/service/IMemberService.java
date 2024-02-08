package com.study.member.service;

import com.study.member.vo.MemberVO;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

public interface IMemberService {



    public void memberJoin(MemberVO member);

    public MemberVO memberLogin(String memId, String memPw);

    public List<MemberVO> getMemberList();

    public MemberVO getMember(String memId);

    public void updateMember(MemberVO member);

    public void deleteMember(MemberVO member);

}
