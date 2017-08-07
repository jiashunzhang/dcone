package com.dcone.dtss.dao;

import java.util.List;

import com.dcone.dtss.model.dc_trade;
import com.dcone.dtss.model.dc_user;

public class TradeDAO {

	public static List<dc_trade> getTradesByUid(int uid) {
		
		
		return null;
	}
	public static List<dc_trade> getTradesByUid(int uid, String start, String end) {
		
		
		return null;
	}
	
	public static List<dc_trade> getTradesByItcode(String itcode) {
		dc_user user = UserDAO.getUserByItcode(itcode);
		
		return getTradesByUid(user.getUid());
	}
	
	public static List<dc_trade> getTradesByUser(dc_user user) {
		return getTradesByUid(user.getUid());
	}
	
	public static dc_trade getTradeByTid(int id) {
		return null;
	}
	/**
	 * 判定交易是否能够进行
	 * @return
	 */
	
	private static boolean preTrade(int wid,int amount) {
		return false;
	}
	
	public static int createTrade(int wid, int amount, String date , String memo) {
		if(preTrade(wid,amount)) {
			//写入交易数据
		}
		return 0;
	}
	
	
	
	
	
	
	
	
}
