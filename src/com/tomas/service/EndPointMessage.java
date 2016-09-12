package com.tomas.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tomas.bean.Trade;
import com.tomas.tradesStorage.TradesStorage;

// add first message to ArraList when first loading the page
// or accessing Web Service
public class EndPointMessage {

	@Autowired
	TradesStorage tradesStorage;
	
	public Trade addEndPointMessage(){
		
		// get date and time, the message have been posted and stored
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-YYYY HH:mm:ss");
		String date = simpleDateFormat.format(new Date());
		
		// create and initialise Trade object with the message data
		Trade trade = new Trade();
		
		trade.setUserId(134256);
		trade.setCurrencyFrom("EUR");
		trade.setCurrencyTo("GBP");
		trade.setAmountSell(new BigDecimal("1000"));
		trade.setAmountBuy(new BigDecimal("747.10"));
		trade.setRate(new BigDecimal("0.7471"));
		trade.setTimePlaced(date);
		trade.setOriginatingCountry("FR");
		
		// add message data to ArrayList in 'TradesStorage' class
		tradesStorage.addTrade(trade);
		
		return trade;
	}
}
