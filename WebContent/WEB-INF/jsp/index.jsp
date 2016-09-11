<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
									placeholder="I want to send...">
							</div>

							<div class="col-xs-3">
								<select class="form-control form-control-xs">
									<option>EUR</option>
									<option>GBP</option>
									<option>USD</option>
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
									placeholder="I want to receive...">
							</div>

							<div class="col-xs-3">
								<select class="form-control form-control-xs">
									<option>EUR</option>
									<option>GBP</option>
									<option>USD</option>
								</select>
							</div>
						</div>
					</div>

					<!-- THIRD ROW 'Rate' IN THE 'Make an order' COLUMN -->
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
									placeholder="Rate...">
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
				<div class="row" id="header_row">
					<div class="col-sm-4">Market</div>
					<div class="col-sm-4">Rate</div>
					<div class="col-sm-4">
						Amount (<span></span>)
					</div>
				</div>
				<div class="markets_body_rows">
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
					<div class="row">
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
						<div class="col-sm-4">.col-sm-4</div>
					</div>
				</div>

			</div>
			<!-- END OF 'col-*-*' CLASS -->

		</div>
		<!-- END OF FIRST TOP ROW (Two columns 'Make an order' and 'Market') -->


	</div>
	<!-- END OF 'container-fluid' CLASS -->

</body>
</html>