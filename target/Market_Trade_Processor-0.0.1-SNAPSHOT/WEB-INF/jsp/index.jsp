<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 'width' portable device width, 'initial' scale: don't zoom in, zoom out, use regular zoom (100%) -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Market Trade Processor</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/css.css">
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.js"></script>

</head>
<body>
	<div class="container">
		<h1>Marketplace</h1>
	</div>

	<div class="container-fluid">

		<!-- FIRST TOP ROW (Two columns 'Make an order' and 'Market') ------------------------------>
		<div class="row">

			<!-- 'Make an order' COLUMN ----------------------------->
			<div class="col-sm-5">
				<h3>Make an order:</h3>

				<form class="form-horizontal">

					<!-- FIRST ROW 'Send' IN THE 'Make an order' COLUMN -->
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label col-xs-2" for="send">Send:</label>
							</div>

							<div class="col-xs-7">
								<input type="text" class="form-control" id="send"
									value="${ tradeMessage.amountSell }"
									placeholder="I want to send...">
							</div>

							<div class="col-xs-3">
								<select class="form-control form-control-xs" id="currency_from">
									<option value="EUR" selected>EUR</option>
									<option value="GBP">GBP</option>
									<option value="USD">USD</option>
								</select>
							</div>
						</div>
					</div>

					<!-- SECOND ROW 'Receive' IN THE 'Make an order' COLUMN -->
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label col-sm-2" for="receive">Receive:</label>
							</div>

							<div class="col-xs-7">
								<input type="text" class="form-control" id="receive"
									value="${ tradeMessage.amountBuy }"
									placeholder="I want to receive...">
							</div>

							<div class="col-xs-3">
								<select class="form-control form-control-xs" id="currency_to">
									<option value="EUR">EUR</option>
									<option value="GBP" selected>GBP</option>
									<option value="USD">USD</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label col-sm-2" for="receive">Country:</label>
							</div>

							<div class="col-xs-10">
								<input type="text" class="form-control" id="country"
									value="${ tradeMessage.originatingCountry }"
									placeholder="Originating Country...">
							</div>
						</div>
					</div>

					<!-- FOURTH ROW 'Rate' IN THE 'Make an order' COLUMN -->
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label class="control-label col-sm-2" for="rate">Rate:</label>
							</div>
							<div class="col-xs-3 control-label">
								<label>1 GBP = </label>
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" id="rate"
									value="${ tradeMessage.rate }" placeholder="Rate...">
							</div>

							<div class="btn-group">
								<button type="button" class="btn btn-primary">-</button>
								<button type="button" class="btn btn-primary">+</button>
								<label>EUR</label>
							</div>


						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-1 col-sm-10">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
				</form>

			</div>
			<!-- END OF 'Make an order' COLUMN -->

			<!-- 'Markets' COLUMN (ON THE RIGHT IN THE TOP ROW) ------------------------------>
			<div class="col-sm-7">
				<h3>Markets</h3>

				<div class="markets_body_rows">
					<div class="row" id="body_row">
						<div class="row">
							<div class="col-sm-6">Amount to sell:</div>
							<div class="col-sm-6">${ tradeMessage.amountSell }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Amount to Buy:</div>
							<div class="col-sm-6">${ tradeMessage.amountBuy }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Currency From:</div>
							<div class="col-sm-6">${ tradeMessage.currencyFrom }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Currency To:</div>
							<div class="col-sm-6">${ tradeMessage.currencyTo }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Rate:</div>
							<div class="col-sm-6">${ tradeMessage.rate }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Time placed:</div>
							<div class="col-sm-6">${ tradeMessage.timePlaced }</div>
						</div>
						<div class="row">
							<div class="col-sm-6">Original Country:</div>
							<div class="col-sm-6">
								<c:out value="${ tradeMessage.originatingCountry }" />
							</div>
						</div>
					</div>

				</div>

			</div>
			<!-- END OF 'col-*-*' CLASS -->

		</div>
		<!-- END OF FIRST TOP ROW (Two columns 'Make an order' and 'Market') -->


	</div>
	<!-- END OF 'container-fluid' CLASS -->

	<!-- ALERT OF SUCCESS ------------------------------------------------------>
	<div class="alert alert-success" id="success_alert">
		<strong>Success!</strong> You have successfully made the Trade order.
	</div>
	<!-- ALERT OF MISSING VALUES ----------------------------------------------->
	<div class="alert alert-danger" id="missing_values">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		<strong>Error!</strong> Please add the missing values:<br><br>
		<span></span>
	</div>

</body>
</html>