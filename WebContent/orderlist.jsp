<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="orderList"  align ="center">
		<input type="button" value="<-- BACK" OnClick="outEquip()"/>
			<span >Order list</span>
			<table class="myTable" cellspacing='0' >
				<tr>
					<th>id</th>
					<th>user_id</th>
					<th>equip_id</th>
					<th>date_Start</th>
					<th>date_End</th>
				</tr>
				<c:forEach items="${list_order}" var="i">
					<h3>
						<tr>
							<td> <c:out value="${i.getOrderId()}"/></td>
							<td> <c:out value="${i.getUser().getUserId()}"/></td>
							<td> <c:out value="${i.getEquipment().getEquipId()}"/></td>
							<td> <c:out value="${i.getDateStart()}"/></td>
							<td> <c:out value="${i.getDateEnd()}"/></td>
						</tr>
					</h3>
				</c:forEach>
		</table>
	</div>