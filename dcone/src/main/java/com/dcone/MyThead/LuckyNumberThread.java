package com.dcone.MyThead;

import java.util.Date;
import java.util.List;
import java.util.Random;
import org.springframework.jdbc.core.JdbcTemplate;
import com.dcone.dtss.dao.LuckyNumberDAO;
import com.dcone.dtss.dao.LuckyNumberRecordDAO;
import com.dcone.dtss.dao.TradeDAO;
import com.dcone.dtss.dao.WalletDAO;
import com.dcone.dtss.model.dc_wallet;

public class LuckyNumberThread extends Thread {
	boolean flag = false;
	JdbcTemplate template;
	int round=0;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("红包雨开始咯!");
		List<dc_wallet> wallets = WalletDAO.getAllWallets();
		
		for (dc_wallet temp :  wallets) {
			if (flag) {
				int total = LuckyNumberDAO.getTotalbyRound(round);
				int lucknumber = 0;
				Random r = new Random();
				if(total >0) {
					if(total >5000) {
						lucknumber = r.nextInt(5000);
					} else {
						lucknumber = total;
					}
				} else {
					break;
				}
				
				
				try {
					Thread.sleep(1000);
					int i = LuckyNumberDAO.luckyRain(round, lucknumber);
					int j = LuckyNumberRecordDAO.newRecord();
					int k = WalletDAO.walletAdd(temp.getWid(), lucknumber);
					int l = TradeDAO.createTrade(temp.getWid(), lucknumber, new Date().toString(), "红包雨");
					if(i*j*k*l>0) {
						//ok
					} else {
						//error
					}
					
					
					
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else  {
				break;
			}
		}

	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int getRound() {
		return round;
	}

	public void setRound(int round) {
		this.round = round;
	}

}
