package com.study.member.service;

import com.study.member.dao.IMemberDao;
import com.study.member.vo.MemberVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.inject.Inject;
import java.lang.reflect.Member;
import java.util.List;
@Service
public class MemberServiceImpl implements IMemberService{

    @Inject
    IMemberDao memberDao;


    @Override
    public void memberJoin(MemberVO member) {
        memberDao.memberJoin(member);
    }

    @Override
    public MemberVO memberLogin(String memId, String memPw) {

        MemberVO member = memberDao.memberLogin(memId);
        if(member == null){

        return null;
        }
        if(!StringUtils.equals(member.getMemPw(), memPw)){

            return null;
        }

        return member;
    }

    @Override
    public List<MemberVO> getMemberList() {
        return memberDao.getMemberList();
    }

    @Override
    public MemberVO getMember(String memId) {
        MemberVO member = memberDao.getMember(memId);
        System.out.println(member);

        return member;
    }


    @Override
    public void updateMember(MemberVO member) {
    MemberVO mem = memberDao.getMember(member.getMemId());

    if(member.getMemPw().equals(mem.getMemPw())){

    }else{
        System.out.println("비밀번호 틀렸음");
    }

    }

    @Override
    public void deleteMember(MemberVO member) {
        MemberVO mem = memberDao.getMember(member.getMemId());
        if(member.getMemPw().equals(mem.getMemPw())){
            memberDao.deleteMember(member);

        }else{
            System.out.println("비밀번호 틀렸음");
        }
    }

}
