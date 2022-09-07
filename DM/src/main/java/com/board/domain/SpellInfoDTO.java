package com.board.domain;

public class SpellInfoDTO {
	private int spell_id;
	private String spell_name;
	private String spell_name_kr;
	private String spell_desc;
	
	public int getSpell_id() {
		return spell_id;
	}
	public void setSpell_id(int spell_id) {
		this.spell_id = spell_id;
	}
	public String getSpell_name() {
		return spell_name;
	}
	public void setSpell_name(String spell_name) {
		this.spell_name = spell_name;
	}
	public String getSpell_name_kr() {
		return spell_name_kr;
	}
	public void setSpell_name_kr(String spell_name_kr) {
		this.spell_name_kr = spell_name_kr;
	}
	public String getSpell_desc() {
		return spell_desc;
	}
	public void setSpell_desc(String spell_desc) {
		this.spell_desc = spell_desc;
	}

}
