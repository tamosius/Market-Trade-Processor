package com.tomas.tradesStorage;

import java.util.ArrayList;
import java.util.List;

import com.tomas.bean.Trade;

public class TradesStorage {

	// declare List to store Trades details
	private static List<Trade> tradesList;
	
	// initialise the List with constructor
	public TradesStorage(){
		
		tradesList = new ArrayList<>();
	}
	
	// setters and getters
	public void addTrade(Trade trade){
		
		tradesList.add(trade);
	}
	
	public List<Trade> getTradesList(){
		
		return tradesList;
	}
}
