package com.study.member.dao;

import com.study.member.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IMemberDao {

    public void memberJoin(MemberVO member);

    public MemberVO memberLogin(String memId);

    public List<MemberVO> getMemberList();

    public MemberVO getMember(String memId);

    public int updateMember(MemberVO member);

    public int deleteMember(MemberVO member);




}
