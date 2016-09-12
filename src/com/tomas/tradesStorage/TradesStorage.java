package com.tomas.tradesStorage;

import java.util.ArrayList;
import java.util.List;

import com.tomas.bean.Trade;

public class TradesStorage {

	// declare List to store Trades object and details
	private static List<Trade> tradesList = new ArrayList<>();
	
	// setters and getters
	public void addTrade(Trade trade){
		
		tradesList.add(trade);
	}
	
	public Trade getLastTrade(){
		
		return tradesList.get(tradesList.size() - 1);
	}
}
