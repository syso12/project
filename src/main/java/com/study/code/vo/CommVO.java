package com.study.code.vo;

public class CommVO {

    private String commCd;
    private String commNm;
    private String commParent;
    private String commOrd;


    public CommVO(String commCd, String commNm, String commParent, String commOrd) {
        this.commCd = commCd;
        this.commNm = commNm;
        this.commParent = commParent;
        this.commOrd = commOrd;
    }

    public CommVO() {
    }


    @Override
    public String toString() {
        return "CommVO{" +
                "commCd='" + commCd + '\'' +
                ", commNm='" + commNm + '\'' +
                ", commParent='" + commParent + '\'' +
                ", commOrd='" + commOrd + '\'' +
                '}';
    }


    public String getCommCd() {
        return commCd;
    }

    public void setCommCd(String commCd) {
        this.commCd = commCd;
    }

    public String getCommNm() {
        return commNm;
    }

    public void setCommNm(String commNm) {
        this.commNm = commNm;
    }

    public String getCommParent() {
        return commParent;
    }

    public void setCommParent(String commParent) {
        this.commParent = commParent;
    }

    public String getCommOrd() {
        return commOrd;
    }

    public void setCommOrd(String commOrd) {
        this.commOrd = commOrd;
    }
}