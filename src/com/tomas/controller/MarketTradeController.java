package com.tomas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MarketTradeController {

	@RequestMapping(value="/marketTradeController", method=RequestMethod.GET)
	public ModelAndView getMarketTradePage(){
		
		return new ModelAndView("index");
	}
}
