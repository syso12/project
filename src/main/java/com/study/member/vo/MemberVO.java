package com.study.member.vo;

import org.springframework.web.bind.annotation.RequestParam;

public class MemberVO {
    private String memId;
    private String memPw;
    private String memName;
    private String memGender;
    private int memZipcode;
    private String memAdd1;
    private String memAdd2;
    private String memCode;
    private String memEmail;

    public MemberVO(String memId, String memPw, String memName, String memGender, int memZipcode, String memAdd1, String memAdd2, String memCode, String memEmail) {
        this.memId = memId;
        this.memPw = memPw;
        this.memName = memName;
        this.memGender = memGender;
        this.memZipcode = memZipcode;
        this.memAdd1 = memAdd1;
        this.memAdd2 = memAdd2;
        this.memCode = memCode;
        this.memEmail = memEmail;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "memId='" + memId + '\'' +
                ", memPw='" + memPw + '\'' +
                ", memName='" + memName + '\'' +
                ", memGender='" + memGender + '\'' +
                ", memZipcode=" + memZipcode +
                ", memAdd1='" + memAdd1 + '\'' +
                ", memAdd2='" + memAdd2 + '\'' +
                ", memCode='" + memCode + '\'' +
                ", memEmail='" + memEmail + '\'' +
                '}';
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getMemPw() {
        return memPw;
    }

    public void setMemPw(String memPw) {
        this.memPw = memPw;
    }

    public String getMemName() {
        return memName;
    }

    public void setMemName(String memName) {
        this.memName = memName;
    }

    public String getMemGender() {
        return memGender;
    }

    public void setMemGender(String memGender) {
        this.memGender = memGender;
    }

    public int getMemZipcode() {
        return memZipcode;
    }

    public void setMemZipcode(int memZipcode) {
        this.memZipcode = memZipcode;
    }

    public String getMemAdd1() {
        return memAdd1;
    }

    public void setMemAdd1(String memAdd1) {
        this.memAdd1 = memAdd1;
    }

    public String getMemAdd2() {
        return memAdd2;
    }

    public void setMemAdd2(String memAdd2) {
        this.memAdd2 = memAdd2;
    }

    public String getMemCode() {
        return memCode;
    }

    public void setMemCode(String memCode) {
        this.memCode = memCode;
    }

    public String getMemEmail() {
        return memEmail;
    }

    public void setMemEmail(String memEmail) {
        this.memEmail = memEmail;
    }
}
