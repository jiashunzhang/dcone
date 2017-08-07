package com.dcone.dtss.model;

public class LuckyNumerRecord {
	int r_id;
	int wid;
	int luck_number;
	int round;
	public LuckyNumerRecord() {}
	public LuckyNumerRecord(int r_id, int wid, int luck_number, int round) {
		super();
		this.r_id = r_id;
		this.wid = wid;
		this.luck_number = luck_number;
		this.round = round;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public int getLuck_number() {
		return luck_number;
	}
	public void setLuck_number(int luck_number) {
		this.luck_number = luck_number;
	}
	public int getRound() {
		return round;
	}
	public void setRound(int round) {
		this.round = round;
	}
	@Override
	public String toString() {
		return "LuckyNumerRecord [r_id=" + r_id + ", wid=" + wid + ", luck_number=" + luck_number + ", round=" + round
				+ "]";
	}
	
}
