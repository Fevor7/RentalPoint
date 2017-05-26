<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<div class="equipList">
			</div>
			<aside class="filters">
			 	<div class="asideFixed">
				 	<span class="line1">Search options </span><br><br>
				 	<span class="line2">Prace:</span><br>
				 	<span>$ </span>
				 	<input type="text" placeholder="min" class="linePraceMin"/>
				 	<span> - </span>
				 	<input type="text" placeholder="max" class="linePraceMax"/><br>
				 	<span class="errorFilr"></span><br>
				 	<button class="butFilter" OnClick="filterApply()">Apply</button>
			 	</div>
			</aside>
		<div class="equiparr">
			<div id="order" class="modal2"  align="center">
						<form>
							<h3>Forming an order</h3>
								<input type="hidden" class="id_eq"/>
								<span class="eqtitle"></span> <br><br>
								<span><strong>date start:</strong></span><br>
								<input id="date_start" class="textIn" type = "date"  name="date_start" value="2017-02-15"/><br><br>
								<span><strong>date start:</strong></span><br>
								<input id="date_end" class="textIn"  type = "date"  name="date_end" value="2017-02-17"/> <br><br>
								<input class="hov" type = "button" name="Order" value="Send order" OnClick="sendord()"/>
						</form>
				</div>
			</div> 