# Market_Trade_Processor
# How to run
Deploy the war file located in the project: **/target/Market_Trade_Processor-0.0.1-SNAPSHOT.war** in the Tomcat's server. You can copy this file and paste it to the Tomcat's directory: **${TOMCAT_HOME}/webapps/**

# Feature List
###Tech Stack
- Spring MVC
- Restful Webservice
- Tomcat
- Ajax
- Jquery
- JSP

### Spring MVC REST Workflow
The following steps describe a typical Spring MVC REST workflow:
The client sends a request to a Web Service in URI form.
The request is intercepted by the DispatcherServlet which looks for Handler Mappings and its type.
- The Handler Mappings section defined in the application context file tells DispatcherServlet which strategy to use to find controllers based on the incoming request.
- Spring MVC supports three different types of mapping request URIs to controllers: annotation, name conventions and explicit mappings. I will be using the annotation approach.
- Requests are processed by the Controller and the response is returned to the DispatcherServlet which then dispatches to the view.
- WebSockets could be implemented to notify each client that the datasource has been changed, each client will then make a new call to the RESTful webservice to retrieve the latest model. (WebSockets are not implemented).

### Message Consumption
The initial message will be consumed via URL: **http://{host}:{port}/Market_Trade_Processor**. Trade message will be POST’d to this endpoint and will take the JSON form of:

**{"userId": "134256", "currencyFrom": "EUR", "currencyTo": "GBP", "amountSell": 1000, "amountBuy": 747.10, "rate": 0.7471, "timePlaced" : "14-JAN-15 10:27:44", "originatingCountry" : "FR"}.**

### Message Processor
Process messages received via the message consumption endpoint.
The interface is com.currencyfair.engineering.test.camel.service.TradeProcessor.

Implementaions are under the package com.currencyfair.engineering.test.camel.service.impl.
PersistantTradeProcessorImpl -> persists the Trade message in database.
AnalyseTradeProcessorImpl -> sends a CurrencyPairDTO to front end via websocket. 
RealTimeTradeProcessorImpl -> sends the Trade Message to front end via websocket.

To add more processor, simple implement the TradeProcessor interface, and add the service name in com.currencyfair.engineering.test.camel.CurrencyFairRouter in appropriate position. (currrent line number 27).
