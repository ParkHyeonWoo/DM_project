package com.board.domain;

public class SkillsDTO {
	private int championId;
	private String lane;
	private String skillSlot;
	private double win_rate;
	private double pick_rate;
	
	public int getChampionId() {
		return championId;
	}
	public void setChampionId(int championId) {
		this.championId = championId;
	}
	public String getLane() {
		return lane;
	}
	public void setLane(String lane) {
		this.lane = lane;
	}
	public String getSkillSlot() {
		return skillSlot;
	}
	public void setSkillSlot(String skillSlot) {
		this.skillSlot = skillSlot;
	}
	public double getWin_rate() {
		return win_rate;
	}
	public void setWin_rate(double win_rate) {
		this.win_rate = win_rate;
	}
	public double getPick_rate() {
		return pick_rate;
	}
	public void setPick_rate(double pick_rate) {
		this.pick_rate = pick_rate;
	}

}
