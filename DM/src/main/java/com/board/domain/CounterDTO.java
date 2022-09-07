package com.board.domain;

public class CounterDTO {
	private int championId;
	private String lane;
	private int counterChamp;
	private double win_rate;
	private double lane_win_rate;
	
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
	public int getCounterChamp() {
		return counterChamp;
	}
	public void setCounterChamp(int counterChamp) {
		this.counterChamp = counterChamp;
	}
	public double getWin_rate() {
		return win_rate;
	}
	public void setWin_rate(double win_rate) {
		this.win_rate = win_rate;
	}
	public double getLane_win_rate() {
		return lane_win_rate;
	}
	public void setLane_win_rate(double lane_win_rate) {
		this.lane_win_rate = lane_win_rate;
	}

}
