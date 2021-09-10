package com.finalp.moim.teampage.common.model.vo;

import java.sql.Date;

public class TeamMember implements java.io.Serializable {
	private static final long serialVersionUID = 3333L;
	
	private int team_member_no;
	private int team_num;
	private int user_no;
	private int team_member_rank;
	private java.sql.Date team_member_date;
	
	public TeamMember() {}
	
	public TeamMember(int team_member_no, int team_num, int user_no, int team_member_rank, Date team_member_date) {
		super();
		this.team_member_no = team_member_no;
		this.team_num = team_num;
		this.user_no = user_no;
		this.team_member_rank = team_member_rank;
		this.team_member_date = team_member_date;
	}

	public int getTeam_member_no() {
		return team_member_no;
	}

	public void setTeam_member_no(int team_member_no) {
		this.team_member_no = team_member_no;
	}

	public int getTeam_num() {
		return team_num;
	}

	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getTeam_member_rank() {
		return team_member_rank;
	}

	public void setTeam_member_rank(int team_member_rank) {
		this.team_member_rank = team_member_rank;
	}

	public java.sql.Date getTeam_member_date() {
		return team_member_date;
	}

	public void setTeam_member_date(java.sql.Date team_member_date) {
		this.team_member_date = team_member_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "TeamMember [team_member_no=" + team_member_no + ", team_num=" + team_num + ", user_no=" + user_no
				+ ", team_member_rank=" + team_member_rank + ", team_member_date=" + team_member_date + "]";
	}
	
}
