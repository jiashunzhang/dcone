package com.dcone.dtss.dao;

import com.dcone.dtss.model.dc_user;

public class UserDAO {
	/**
	 * 通过UID获取用户对象
	 * @author jszhang
	 * @param uid 用户id
	 * @return 指定ID的用户dc_user对象
	 */
	public static dc_user getUserByUid(int uid) {
		
		return null;
	}
	
	public static dc_user getUserByItcode(String itcode) {
		return null;
	}
	
	public static int createUser(String itcode, String username) {
		return 0;
	}
	
	public static boolean checkUserInfo(String itcode, String username) {
		return false;
	}
	/**
	 * 修改数据库,修改model,完成用户锁定
	 * @param uid
	 * @return
	 */
	public static boolean lockUserById(int uid) {
		return false;
	}
	/**
	 * 
	 * @param itcode
	 * @return
	 */
	public static boolean lockUserByItcode(String itcode) {
		return false;
	}
	
	public static boolean unlockUserByID(int id) {
		return false;
	}
	
	
	public static boolean isLock(int uid) {
		return false;
	}
	
	
}
