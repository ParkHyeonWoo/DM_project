package com.board.domain;

public class MychampionDTO {
	int champ_id;
	private String champ_name;
	private String champ_name_kr;
	private int champ_stat_difficult;
	private String champ_main_role;
	private String champ_story;
	
	public String getChamp_story() {
		return champ_story;
	}
	public void setChamp_story(String champ_story) {
		this.champ_story = champ_story;
	}
	public int getChamp_id() {
		return champ_id;
	}
	public void setChamp_id(int champ_id) {
		this.champ_id = champ_id;
	}
	public String getChamp_name() {
		return champ_name;
	}
	public void setChamp_name(String champ_name) {
		this.champ_name = champ_name;
	}
	public String getChamp_name_kr() {
		return champ_name_kr;
	}
	public void setChamp_name_kr(String champ_name_kr) {
		this.champ_name_kr = champ_name_kr;
	}
	public int getChamp_stat_difficult() {
		return champ_stat_difficult;
	}
	public void setChamp_stat_difficult(int champ_stat_difficult) {
		this.champ_stat_difficult = champ_stat_difficult;
	}
	public String getChamp_main_role() {
		return champ_main_role;
	}
	public void setChamp_main_role(String champ_main_role) {
		this.champ_main_role = champ_main_role;
	}
	
}
