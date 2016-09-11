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
The client sends a request to a web service in URI form.
The request is intercepted by the DispatcherServlet which looks for Handler Mappings and its type.
- The Handler Mappings section defined in the application context file tells DispatcherServlet which strategy to use to find controllers based on the incoming request.
- Spring MVC supports three different types of mapping request URIs to controllers: annotation, name conventions and explicit mappings.
- Requests are processed by the Controller and the response is returned to the DispatcherServlet which then dispatches to the view. 

### Message Consumption
The initial message will be consumed via URL: **http://{host}:{port}/Market_Trade_Processor**. Trade message will be POST’d to this endpoint and will take the JSON form of:

**{"userId": "134256", "currencyFrom": "EUR", "currencyTo": "GBP", "amountSell": 1000, "amountBuy": 747.10, "rate": 0.7471, "timePlaced" : "14-JAN-15 10:27:44", "originatingCountry" : "FR"}.**
