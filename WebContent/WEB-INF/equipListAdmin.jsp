		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="centerContent">
			<div class="equipList">
			<c:forEach items="${list_eq}" var="i">
				<div class="windowEquip">
					<div class="winEqImg"><img src="${i.getUrl()}" alt="test"></div>			
					<div align="center">
						<!--  <button class="but">asd</button>-->
						<button class="orderBut" OnClick="orderForm('${i.getTitle()}','${i.getEquipId()}')">Order</button>
						<span class="line1">Type: </span>
						<span class="line2">${i.getName()}</span><br>
						<span class="line1">Title:</span><br>
						<span class="line2">${i.getTitle()}</span><br>
						<span class="line1">Price:</span> 
						<span class="line3">$ ${i.getPrice()} /hour</span>
					</div>
				</div>
				</c:forEach>
			</div>
			
			<aside class="filters">
			 	<div class="asideFixed">
				 	<span>fdsgdfgdfg</span><br>
				 	<span>fdsgdfgdfg</span><br>
				 	<span>fdsgdfgdfg</span><br>
				 	<span>fdsgdfgdfg</span><br>
				 	<span>fdsgdfgdfg</span><br>
			 	</div>
			</aside>
		</div>
		<div class="equiparr">
			<div>
	 			<!--  <div>User: ${user}</div>-->
			<table class="myTable" cellspacing='0'>
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Title</th>
					<th>Price</th>
					<th>Type</th>
				</tr>
					<c:forEach items="${list_eq}" var="i">
						<h3>
							<tr>
								<td> <c:out value="${list_eq.indexOf(i)+1}"/></td>
								<td> <c:out value="${i.getName()}"/></td>
								<td> <c:out value="${i.getTitle()}"/></td>
								<td> <c:out value="${i.getPrice()}"/></td>
								<td> <c:out value="${i.getType()}"/><input class="hov" type="button" id="button1" name="${i.getTitle()}" value="Order" OnClick="a('${i.getTitle()}','${i.getEquipId()}')"/></td> 
							</tr>
						</h3> 
					</c:forEach>
			</table>
		</div>
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