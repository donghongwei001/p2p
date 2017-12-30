package com.entity;

public class SzhPage {
		//第几页
		private Integer page;
		//每页有多少数据
		private Integer rows;
		//第几条数据开始
		private int startIndex;
		//第几条数据结束
		private int endIndex;
		//模糊查询值
		private String selVal;
		
		public String getSelVal() {
			return selVal;
		}
		public void setSelVal(String selVal) {
			this.selVal = selVal;
		}
		public Integer getPage() {
			return page;
		}
		public void setPage(Integer page) {
			this.page = page;
		}
		public Integer getRows() {
			return rows;
		}
		public void setRows(Integer rows) {
			this.rows = rows;
		}
		public int getStartIndex() {
			return startIndex;
		}
		public void setStartIndex(int startIndex) {
			this.startIndex = startIndex;
		}
		public int getEndIndex() {
			return endIndex;
		}
		public void setEndIndex(int endIndex) {
			this.endIndex = endIndex;
		}
		
}
