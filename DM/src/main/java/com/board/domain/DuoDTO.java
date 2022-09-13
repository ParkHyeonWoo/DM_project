package com.board.domain;

import lombok.Data;


@Data
public class DuoDTO {
	private String LANESET;
	private int CHAMPIONID;
	private int PARTNERID;
	private double WIN_RATE;
	private double PICK_RATE;
}
