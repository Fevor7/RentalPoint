		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="equiparr">
		<div><a href="index.jsp" > ...back</a> </div>
		<div align="center">Welcome User!!!</div>
		
		<div align="center">
			<table class="simple-little-table" cellspacing='0'>
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
								<td> <c:out value="${i.getType()}"/><input class="hov" type="button" id="button1" name="${i.getTitle()}" value="ORDER" OnClick="a('${i.getTitle()}','${i.getEquipId()}')"/></td> 
							</tr>
						</h3>
					</c:forEach>
			</table>
		</div>
		<div id="order" class="modal2"  align="center">
					<form>
						<h3>Forming an order</h3>
							<input type="hidden" class="id_eq"/>
							<i><span class="eqtitle"></span></i> <br>
							<span><strong>date start:</strong></span>
							<input class="date_start" type = "date"  name="date_start" value="2017-02-15"/>
							<span><strong>date start:</strong></span>
							<input class="date_end"  type = "date"  name="date_end" value="2017-02-17"/> <br><br>
							<input class="send_ord" type = "button" name="Order" value="Send order" OnClick="sendord()"/>
					</form>
			</div>
			</div>
			<div class="arrort"></div>