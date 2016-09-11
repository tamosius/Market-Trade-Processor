package com.tomas.dao.implementation;

import com.tomas.bean.Trade;
import com.tomas.dao.ProcessData;
import com.tomas.tradesStorage.TradesStorage;

// class to process new Trade details and store it the ArrayList
public class ProcessDataImplementation implements ProcessData{

	@Override
	public void processData(Trade trade){
		
		TradesStorage tradesStorage = new TradesStorage();
		
		trade.setUserId(trade.getUserId());
		trade.setCurrencyFrom(trade.getCurrencyFrom());
		trade.setCurrencyTo(trade.getCurrencyFrom());
		trade.setAmountSell(trade.getAmountSell());
		trade.setAmountBuy(trade.getAmountBuy());
		trade.setRate(trade.getRate());
		trade.setTimePlaced(trade.getTimePlaced());
		trade.setOriginatingCountry(trade.getOriginatingCountry());
		
		// add new 'Trade' object to ArrayList in 'TradesStorage' class
		tradesStorage.addTrade(trade);
		
	}
}
