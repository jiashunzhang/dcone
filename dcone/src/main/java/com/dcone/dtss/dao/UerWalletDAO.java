package com.dcone.dtss.dao;

import java.util.List;

import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_user_wallet;

public class UerWalletDAO {
	public dc_user_wallet getWallInfoByUser(dc_user user) {
		return null;
	}
	
	public dc_user_wallet getWallInfoByUid(int uid) {
		dc_user user = UserDAO.getUserByUid(uid);
		return getWallInfoByUser(user);
	}
	public dc_user_wallet getWallInfoByItcode(String itcode) {
		dc_user user = UserDAO.getUserByItcode(itcode);
		return getWallInfoByUser(user);
	}
	
	public List<dc_user_wallet> getAllWallInfoByUser() {
		return null;
	}
}
