package com.tomas.dao.implementation;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

import com.tomas.bean.Trade;
import com.tomas.dao.ProcessData;
import com.tomas.tradesStorage.TradesStorage;

// class to process new Trade details and store it the ArrayList
public class ProcessDataImplementation implements ProcessData{

	@Autowired
	TradesStorage tradesStorage;
	
	// process trade data and add to the ArrayList in 'TradesStorage' class
	@Override
	public void processData(Trade trade){
		
		// generate random number for user ID
		Random random = new Random();
		// generate random number from '100000' to '999999'
		int userId = random.nextInt(999999) + 100000;
		
		// get date and time, the message have been posted and stored
	    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-YYYY HH:mm:ss");
		String date = simpleDateFormat.format(new Date());
		
		trade.setUserId(userId);
		trade.setCurrencyFrom(trade.getCurrencyFrom());
		trade.setCurrencyTo(trade.getCurrencyFrom());
		trade.setAmountSell(trade.getAmountSell());
		trade.setAmountBuy(trade.getAmountBuy());
		trade.setRate(trade.getRate());
		trade.setTimePlaced(date);
		trade.setOriginatingCountry(trade.getOriginatingCountry());
		
		// add new 'Trade' object to ArrayList in 'TradesStorage' class
		tradesStorage.addTrade(trade);
		
	}
}
