package com.board.domain;

public class ChamDetailDTO {
	int championId;
	String championName;
	String championKrName;
	String lane;
	double win_rate;
	double pick_rate;
	double ban_rate;
	
	public int getChampionId() {
		return championId;
	}
	public void setChampionId(int championId) {
		this.championId = championId;
	}
	public String getChampionName() {
		return championName;
	}
	public void setChampionName(String championName) {
		this.championName = championName;
	}
	public String getChampionKrName() {
		return championKrName;
	}
	public void setChampionKrName(String championKrName) {
		this.championKrName = championKrName;
	}
	public String getLane() {
		return lane;
	}
	public void setLane(String lane) {
		this.lane = lane;
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
	public double getBan_rate() {
		return ban_rate;
	}
	public void setBan_rate(double ban_rate) {
		this.ban_rate = ban_rate;
	}
	
}
