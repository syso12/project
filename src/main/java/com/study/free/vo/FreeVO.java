package com.study.free.vo;

public class FreeVO {
    private int boNo;
    private String boTitle;
    private String boWriter;
    private String boPass;
    private String boCategory;
    private String boContent;
    private String boRegDate;
    private String boModDate;
    private String boCategoryNm;

    public FreeVO(int boNo, String boTitle, String boWriter, String boPass, String boCategory, String boContent, String boRegDate, String boModDate, String boCategoryNm) {
        this.boNo = boNo;
        this.boTitle = boTitle;
        this.boWriter = boWriter;
        this.boPass = boPass;
        this.boCategory = boCategory;
        this.boContent = boContent;
        this.boRegDate = boRegDate;
        this.boModDate = boModDate;
        this.boCategoryNm = boCategoryNm;
    }

    public FreeVO() {
    }

    @Override
    public String toString() {
        return "FreeVO{" +
                "boNo=" + boNo +
                ", boTitle='" + boTitle + '\'' +
                ", boWriter='" + boWriter + '\'' +
                ", boPass='" + boPass + '\'' +
                ", boCategory='" + boCategory + '\'' +
                ", boContent='" + boContent + '\'' +
                ", boRegDate='" + boRegDate + '\'' +
                ", boModDate='" + boModDate + '\'' +
                ", boCategoryNm='" + boCategoryNm + '\'' +
                '}';
    }

    public int getBoNo() {
        return boNo;
    }

    public void setBoNo(int boNo) {
        this.boNo = boNo;
    }

    public String getBoTitle() {
        return boTitle;
    }

    public void setBoTitle(String boTitle) {
        this.boTitle = boTitle;
    }

    public String getBoWriter() {
        return boWriter;
    }

    public void setBoWriter(String boWriter) {
        this.boWriter = boWriter;
    }

    public String getBoPass() {
        return boPass;
    }

    public void setBoPass(String boPass) {
        this.boPass = boPass;
    }

    public String getBoCategory() {
        return boCategory;
    }

    public void setBoCategory(String boCategory) {
        this.boCategory = boCategory;
    }

    public String getBoContent() {
        return boContent;
    }

    public void setBoContent(String boContent) {
        this.boContent = boContent;
    }

    public String getBoRegDate() {
        return boRegDate;
    }

    public void setBoRegDate(String boRegDate) {
        this.boRegDate = boRegDate;
    }

    public String getBoModDate() {
        return boModDate;
    }

    public void setBoModDate(String boModDate) {
        this.boModDate = boModDate;
    }

    public String getBoCategoryNm() {
        return boCategoryNm;
    }

    public void setBoCategoryNm(String boCategoryNm) {
        this.boCategoryNm = boCategoryNm;
    }
}
