package com.study.paging.vo;

public class PagingVO {

    private int curPage=1;          // 현재 페이지 번호
    private int rowSizePerPage=10;  // 한 페이지당 작성글 갯수
    private int pageSize=10;        // 페이지 리스트에서 보여줄 페이지 갯수
    private int totalRowCount;      // 총 작성글 건수 페이지 세팅 전 DB조회

    private int firstRow;           // 시작 작성글 번호
    private int lastRow;            // 마지막 작성글 번호
    private int totalPageCount;     // 총 작성글 갯수
    private int firstPage;          // 페이지 리스트에서 시작 번호
    private int lastPage;           // 페이지 리스트에서 마지막 번호

    @Override
    public String toString() {
        return "PagingVO{" +
                "curPage=" + curPage +
                ", rowSizePerPage=" + rowSizePerPage +
                ", pageSize=" + pageSize +
                ", totalRowCount=" + totalRowCount +
                ", firstRow=" + firstRow +
                ", lastRow=" + lastRow +
                ", totalPageCount=" + totalPageCount +
                ", firstPage=" + firstPage +
                ", lastPage=" + lastPage +
                '}';
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getRowSizePerPage() {
        return rowSizePerPage;
    }

    public void setRowSizePerPage(int rowSizePerPage) {
        this.rowSizePerPage = rowSizePerPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRowCount() {
        return totalRowCount;
    }

    public void setTotalRowCount(int totalRowCount) {
        this.totalRowCount = totalRowCount;
    }

    public int getFirstRow() {
        return firstRow;
    }

    public void setFirstRow(int firstRow) {
        this.firstRow = firstRow;
    }

    public int getLastRow() {
        return lastRow;
    }

    public void setLastRow(int lastRow) {
        this.lastRow = lastRow;
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }

    public void pageSetting(){
        // 총 페이지 계산
        totalPageCount=(totalRowCount-1)/rowSizePerPage+1; // 총 페이지 갯수는 총 작성글갯수에서 -1을 하고 한페이지당 보여줄 작성글 갯수를 나누고 나머지가 있다면 1을 더한다

        // 첫번째 작성글 표시 계산
        firstRow=(curPage-1)*rowSizePerPage+1;
        // 마지막 작성글 표시 계산
        lastRow=firstRow+rowSizePerPage-1;
        if(lastRow>totalRowCount) lastRow = totalRowCount;

        // 첫번째 페이지 계산
        firstPage=(curPage-1)/pageSize*pageSize+1;
        // 마지막 페이지 계산
        lastPage=firstPage+pageSize-1;
        if(lastPage>totalPageCount) lastPage = totalPageCount;

        // curPage가 15면 firstPage는 11 lastPage는 20 firstRow는 151 lastRow는 160
        // curPage가 37면 firstPage는 31 lastPage는 40 firstRow는 371 lastRow는 380



    }












}
