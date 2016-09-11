package com.tomas.dao;

import com.tomas.bean.Trade;

public interface ProcessData {
    
	// process trade data received via POST'd Web Service
	public void processData(Trade trade);
}
