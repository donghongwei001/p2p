package com.entity;

import java.util.List;
import java.util.Map;

public class Role {
	int roleid;
	String rolename;
	int rolestatus;
	String rolecode;
	String description;
	String power;
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public int getRolestatus() {
		return rolestatus;
	}
	public void setRolestatus(int rolestatus) {
		this.rolestatus = rolestatus;
	}
	public String getRolecode() {
		return rolecode;
	}
	public void setRolecode(String rolecode) {
		this.rolecode = rolecode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	@Override
	public String toString() {
		return "Role [roleid=" + roleid + ", rolename=" + rolename + ", rolestatus=" + rolestatus + ", rolecode="
				+ rolecode + ", description=" + description + ", power=" + power + "]";
	}
	
	
	
	
	
}
