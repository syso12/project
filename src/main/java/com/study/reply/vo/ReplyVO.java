package com.study.reply.vo;

public class ReplyVO {
    private int reNo;
//    private String reCategory;  // 분류(board)
    private int reParentNo;     // 댓글 부모 번호
    private String reMemId;     // 작성자 id
    private String reContents;  // 댓글 내용
    private String reRegDate;   // 등록 날짜
    private String reModDate;   // 수정 날짜
    private String reName;      // 이름

    public ReplyVO(int reNo, int reParentNo, String reMemId, String reContents, String reRegDate, String reModDate, String reName) {
        this.reNo = reNo;
        this.reParentNo = reParentNo;
        this.reMemId = reMemId;
        this.reContents = reContents;
        this.reRegDate = reRegDate;
        this.reModDate = reModDate;
        this.reName = reName;
    }

    public ReplyVO() {
    }


    @Override
    public String toString() {
        return "ReplyVO{" +
                "reNo=" + reNo +
                ", reParentNo=" + reParentNo +
                ", reMemId='" + reMemId + '\'' +
                ", reContents='" + reContents + '\'' +
                ", reRegDate='" + reRegDate + '\'' +
                ", reModDate='" + reModDate + '\'' +
                ", reName='" + reName + '\'' +
                '}';
    }


    public int getReNo() {
        return reNo;
    }

    public void setReNo(int reNo) {
        this.reNo = reNo;
    }

    public int getReParentNo() {
        return reParentNo;
    }

    public void setReParentNo(int reParentNo) {
        this.reParentNo = reParentNo;
    }

    public String getReMemId() {
        return reMemId;
    }

    public void setReMemId(String reMemId) {
        this.reMemId = reMemId;
    }

    public String getReContents() {
        return reContents;
    }

    public void setReContents(String reContents) {
        this.reContents = reContents;
    }

    public String getReRegDate() {
        return reRegDate;
    }

    public void setReRegDate(String reRegDate) {
        this.reRegDate = reRegDate;
    }

    public String getReModDate() {
        return reModDate;
    }

    public void setReModDate(String reModDate) {
        this.reModDate = reModDate;
    }

    public String getReName() {
        return reName;
    }

    public void setReName(String reName) {
        this.reName = reName;
    }
}
