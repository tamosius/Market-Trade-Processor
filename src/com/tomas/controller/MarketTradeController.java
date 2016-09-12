package com.tomas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.tomas.bean.Trade;
import com.tomas.dao.ProcessData;
import com.tomas.service.EndPointMessage;
import com.tomas.tradesStorage.TradesStorage;

/*
 * @RestController, used instead both @Controller and @ResponseBody annotations. 
 * By annotating the controller class with @RestController annotation, you no longer need to add 
 * @ResponseBody to all the request mapping methods. The @ResponseBody annotation is active by default
 */
@RestController
@RequestMapping(value="/rest")
public class MarketTradeController {
	
	@Autowired
	EndPointMessage endPointMessage;
	
	@Autowired
	ProcessData processData;
	
	@Autowired
	TradesStorage tradesStorage;

	@RequestMapping(value="/marketTradeController", method=RequestMethod.GET)
	public ModelAndView getMarketTradePage(){
		
		// get the initial trade message and display in the view
		Trade tradeMessage = endPointMessage.addEndPointMessage();
		
		return new ModelAndView("index", "tradeMessage", tradeMessage);
	}
	
	// method to retrieve data in JSON format
	@RequestMapping(value="/getTradeInfo", method=RequestMethod.GET, produces="application/json")
	public Trade getTradeInfo(){
		
		// get the initial message and return it in JSON format
		return endPointMessage.addEndPointMessage();
	}
	
	// process trade data and return the last object added (append to the view in the table 'index.jsp)
	@RequestMapping(value="/addTradeMarket", method=RequestMethod.POST, produces="application/json")
	public Trade addTradeMarket(@RequestBody Trade trade){
		
		// add new trade to the 'TradesStorage' class
		processData.processData(trade);
		
		// return the last added Trade and send to the front view in JSON
		return tradesStorage.getLastTrade();
	}
}
