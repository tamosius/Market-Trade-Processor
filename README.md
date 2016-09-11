# Market_Trade_Processor
# How to run
Deploy the war file located in the project: **/target/Market_Trade_Processor-0.0.1-SNAPSHOT.war** in the Tomcat's server. You can copy this file and paste it to the Tomcat's directory: **${TOMCAT_HOME}/webapps/**
# Feature List
#Tech Stack
### Example
- first
- second
   - third
### Next Example
* first 
* second
# Message Consumption
The initial message will be consumed via URL: **http://{host}:{port}/Market_Trade_Processor**. Trade message will be POST’d to this endpoint and will take the JSON form of:

**{"userId": "134256", "currencyFrom": "EUR", "currencyTo": "GBP", "amountSell": 1000, "amountBuy": 747.10, "rate": 0.7471, "timePlaced" : "14-JAN-15 10:27:44", "originatingCountry" : "FR"}.**
