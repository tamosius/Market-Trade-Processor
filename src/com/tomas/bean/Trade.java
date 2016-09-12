package com.tomas.bean;

import java.math.BigDecimal;

public class Trade {

	  private int userId;
	  private String currencyFrom;
	  private String currencyTo;
	  private BigDecimal amountSell; // Using BigDecimal for computations  the precision that it offers
	  private BigDecimal amountBuy;  // (Money values often need this).
	  private BigDecimal rate;
	  private String timePlaced;
	  private String originatingCountry;
	  
	  // no-args constructor
	  public Trade(){
		  
	  }
	
	// setters and getters
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCurrencyFrom() {
		return currencyFrom;
	}
	public void setCurrencyFrom(String currencyFrom) {
		this.currencyFrom = currencyFrom;
	}
	public String getCurrencyTo() {
		return currencyTo;
	}
	public void setCurrencyTo(String currencyTo) {
		this.currencyTo = currencyTo;
	}
	public BigDecimal getAmountSell() {
		return amountSell;
	}
	public void setAmountSell(BigDecimal amountSell) {
		this.amountSell = amountSell;
	}
	public BigDecimal getAmountBuy() {
		return amountBuy;
	}
	public void setAmountBuy(BigDecimal amountBuy) {
		this.amountBuy = amountBuy;
	}
	public BigDecimal getRate() {
		return rate;
	}
	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}
	public String getTimePlaced() {
		return timePlaced;
	}
	public void setTimePlaced(String timePlaced) {
		this.timePlaced = timePlaced;
	}
	public String getOriginatingCountry() {
		return originatingCountry;
	}
	public void setOriginatingCountry(String originatingCountry) {
		this.originatingCountry = originatingCountry;
	}
	  
	  
	  
}
