package com.entity;

public class Power {
	String id;
	String name;
	String code;
	String description;
	String page;
	int generatenemu;
	String pid;
	int zindex;
	String zhuid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	
	
	public int getGeneratenemu() {
		return generatenemu;
	}
	public void setGeneratenemu(int generatenemu) {
		this.generatenemu = generatenemu;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getZindex() {
		return zindex;
	}
	public void setZindex(int zindex) {
		this.zindex = zindex;
	}
	
	public String getZhuid() {
		return zhuid;
	}
	public void setZhuid(String zhuid) {
		this.zhuid = zhuid;
	}
	@Override
	public String toString() {
		return "Power [id=" + id + ", name=" + name + ", code=" + code + ", description=" + description + ", page="
				+ page + ", generatenemu=" + generatenemu + ", pid=" + pid + ", zindex=" + zindex + ", zhuid=" + zhuid
				+ "]";
	}
	
	
	
}
