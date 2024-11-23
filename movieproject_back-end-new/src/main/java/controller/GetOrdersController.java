package controller;

import java.util.*;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.google.gson.Gson;

import dao.OrderDAO;
import model.Order;

@Path(value = "/orders")
public class GetOrdersController {

	@GET
	@Path("/{username}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response loginForm(@PathParam("username") String username) {
		OrderDAO dao = new OrderDAO();
		List<Order> orders = dao.getOrdersByUserName(username);

		if (orders != null) {
			// 返回找到的訂單及 HTTP 200 狀態碼
			return Response.ok(orders).build();
		} else {
			// 如果找不到訂單，返回 HTTP 404 狀態碼
			return Response.status(Response.Status.NOT_FOUND).entity("Order not found for username: " + username)
					.build();
		}
	}
}
