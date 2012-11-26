update order set totalPrice = 
	(select sum(menu.unitPrice * orderDetail.qty) 
		from orderDetail, menu 
		where orderDetail.menu_id = menu.menu_id 
		and orderDetail.order_id = order.order_id 
		group by orderDetail.order_id)
	where order_id = X;