package com.board.domain;

public class TierListDTO {
	
	private String championId;
	private String championName;
	private String championKrName;
	private int champTier;
	private String lane;
	private double win_rate;
	private double pick_rate;
	private double ban_rate;
	private double lane_win_late;
	
	public String getChampionId() {
		return championId;
	}
	public void setChampionId(String championId) {
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
	public int getChampTier() {
		return champTier;
	}
	public void setChampTier(int champTier) {
		this.champTier = champTier;
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
	public double getLane_win_late() {
		return lane_win_late;
	}
	public void setLane_win_late(double lane_win_late) {
		this.lane_win_late = lane_win_late;
	}
	
}
