package com.board.domain;

public class SpellsDTO {
	private int championId;
	private String lane;
	private int spell_1;
	private int spell_2;
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
	public int getSpell_1() {
		return spell_1;
	}
	public void setSpell_1(int spell_1) {
		this.spell_1 = spell_1;
	}
	public int getSpell_2() {
		return spell_2;
	}
	public void setSpell_2(int spell_2) {
		this.spell_2 = spell_2;
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
