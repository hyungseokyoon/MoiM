package com.finalp.moim.recruit.model.vo;

public class SearchRecruit implements java.io.Serializable {
	private static final long serialVersionUID = 215L;
	
	private String team_level;
	private String team_filed;
	private String team_local;
	private String team_name;
	private String team_act_day;
	
	public SearchRecruit() {}

	public SearchRecruit(String team_level, String team_filed, String team_local, String team_name,
			String team_act_day) {
		super();
		this.team_level = team_level;
		this.team_filed = team_filed;
		this.team_local = team_local;
		this.team_name = team_name;
		this.team_act_day = team_act_day;
	}

	public String getTeam_level() {
		return team_level;
	}

	public void setTeam_level(String team_level) {
		this.team_level = team_level;
	}

	public String getTeam_filed() {
		return team_filed;
	}

	public void setTeam_filed(String team_filed) {
		this.team_filed = team_filed;
	}

	public String getTeam_local() {
		return team_local;
	}

	public void setTeam_local(String team_local) {
		this.team_local = team_local;
	}

	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getTeam_act_day() {
		return team_act_day;
	}

	public void setTeam_act_day(String team_act_day) {
		this.team_act_day = team_act_day;
	}

	@Override
	public String toString() {
		return "SearchRecruit [team_level=" + team_level + ", team_filed=" + team_filed + ", team_local=" + team_local
				+ ", team_name=" + team_name + ", team_act_day=" + team_act_day + "]";
	}
	
	
	
	
	
	
}
