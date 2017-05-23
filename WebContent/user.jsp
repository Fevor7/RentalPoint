		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="equiparr">
		<div align="center">
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