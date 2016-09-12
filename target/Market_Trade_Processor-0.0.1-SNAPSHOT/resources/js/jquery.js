$(document).ready(function(){
	
	$("form").submit(function(event){
		
		// hide the 'missing values' alert block
		$("#missing_values").hide();
		
		var errorMessage = "";
		
		// get values from the form
		var amountSell = $(this).find("#send").val();
		var amountBuy = $(this).find("#receive").val();
		var currencyFrom = $(this).find("#currency_from").val();
		var currencyTo = $(this).find("#currency_to").val();
		var country = $(this).find("#country").val();
		var rate = $(this).find("#rate").val();
		
		if(amountSell.trim().length === 0){
			
			errorMessage += "Amount to send (sell)<br>";
		}
		if(amountBuy.trim().length === 0){
			
			errorMessage += "Amount to receive (buy)<br>";
		}
		if(country.trim().length === 0){
			
			errorMessage += "Country<br>"; 
		}
		if(rate.trim().length === 0){
			
			errorMessage += "Rate";
		}
		
		if(errorMessage.length !== 0){
			
			// display 'missing values' alert
			$("#missing_values").show();
			
			// add allert for missing values in the second 'strong' element
			$("#missing_values span").html(errorMessage);
		}
		else{
			
			var tradeMarket = {
					
					amountSell   : amountSell,
					amountBuy    : amountBuy,
					currencyFrom : currencyFrom,
					currencyTo   : currencyTo,
					country      : country,
					rate         : rate	
			}
			
			$.ajax({
			    type: "POST",
			    url: "/Market_Trade_Processor/rest/addTradeMarket",
			    data: JSON.stringify(tradeMarket),
			    contentType: "application/json; charset=utf-8",
			    dataType: "json",
			    success: function(data){
			    	
			    	$("#body_row").append(
			    			
			    		"<div class='row' id='body_row'>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Amount to sell:</div>" + 
								"<div class='col-sm-6'>" + data.amountSell + "</div>" + 
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Amount to Buy:</div>" +
								"<div class='col-sm-6'>" + data.amountBuy + "</div>" +
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Currency From:</div>" +
								"<div class='col-sm-6'>" + data.currencyFrom + "</div>" +
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Currency To:</div>" +
								"<div class='col-sm-6'>" + data.currencyTo + "</div>" +
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Rate:</div>" +
								"<div class='col-sm-6'>" + data.rate + "</div>" +
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Time placed:</div>" +
								"<div class='col-sm-6'>" + data.timePlaced + "</div>" +
							"</div>" +
							"<div class='row'>" +
								"<div class='col-sm-6'>Original Country:</div>" +
								"<div class='col-sm-6'>" + data.originatingCountry + "</div>" +
							"</div>" +
						"</div>");
			    	
			    	$("#success_alert").fadeIn(300).delay(3000).fadeOut(200);
			    },
			    error: function(errMsg) {
			    	
			        alert(errMsg);
			    }
			});
		}
		
		event.preventDefault();
		
	});
	
	
})