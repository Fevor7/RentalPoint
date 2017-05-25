<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${list_eq}" var="i">
		<div class="windowEquip">
			<div class="winEqImg"><img src="${i.getUrl()}" alt="test"></div>			
				<div align="center">
					<button class="orderBut" OnClick="orderForm('${i.getTitle()}','${i.getEquipId()}')">Order</button>
					<span class="line1">Type: </span>
					<span class="line2">${i.getName()}</span><br>
					<span class="line1">Title:</span><br>
					<span class="line2">${i.getTitle()}</span><br>
					<span class="line1">Price:</span> 
					<span class="line3">$ ${i.getPrice()}/hour</span>
				</div>
		</div>
</c:forEach>