package com.board.domain;

public class RunesDTO {
	String mainRunes;
	String subRunes;
	double win_rate;
	double pick_rate;
	
	public String getMainRunes() {
		return mainRunes;
	}
	public void setMainRunes(String mainRunes) {
		this.mainRunes = mainRunes;
	}
	public String getSubRunes() {
		return subRunes;
	}
	public void setSubRunes(String subRunes) {
		this.subRunes = subRunes;
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
