package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.mysql.cj.Session;

import dao.MovieDao;
import dao.OrderDAO;
import model.Movie;
import model.Order;

/**
 * Servlet implementation class MovieGetServlet___store user selected movie
 */
@WebServlet("/movieidsaveroom")
public class MovieIdSaveRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieIdSaveRoomServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//
		// TODO Auto-generated method stub
		/*
		 * request.getSession().getAttribute("map"); HashMap<String, Object> readMap =
		 * (HashMap<String, Object>) request.getSession().getAttribute("map"); int
		 * count=request.getSession().getAttribute("map")!=null?(int)
		 * readMap.get("count"):0; int
		 * cc=request.getSession().getAttribute("map")!=null?(int) readMap.get("cc"):0;
		 * String string_test=request.getSession().getAttribute("map")!=null?(String)
		 * readMap.get("string_test"):"init";
		 * 
		 * try { Thread.sleep(10); System.out.println("FAServlet End...");//約執行0.068ms
		 * }catch(Exception ex) {} PrintWriter pp=response.getWriter();
		 * pp.print(count+" "+cc); count++; cc+=2; HashMap<String,Object> map = new
		 * HashMap<>(); map.put("count", count); map.put("cc", cc);
		 * map.put("string_test", "ttttt"); request.getSession().setAttribute("map",
		 * map);
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HashMap<String, Object> readMap = (HashMap<String, Object>) request.getSession().getAttribute("map") != null
				? (HashMap<String, Object>) request.getSession().getAttribute("map")
				: new HashMap<>();

		if (request.getParameter("cinemaRoom") != null) {
			String cinema = request.getParameter("cinema");
			String cinemaRoom = request.getParameter("cinemaRoom");
			String playdate = request.getParameter("playdate");
			String playtime = request.getParameter("playtime");
			String session = request.getParameter("session");
			String runtime = request.getParameter("runtime");
			OrderDAO orderDAO = new OrderDAO();
			String userName = request.getParameter("userNameRoom");
			System.out.println("cinemaRoom userName:"+userName);
			Order order = orderDAO.getOrderByName(userName);
			order.setCinema(cinema);
			order.setCinemaRoom(cinemaRoom);
			order.setMovieTime(playdate + playtime+"_+"+runtime);
			order.setSession(session);
			orderDAO.updateOrder(order);
			response.getWriter().append(
					" Session saved " + "cinemaRoom:" + order.getCinemaRoom() + " playtime" + order.getMovieTime());
		}
		
//		llList = new ArrayList<>();
//		llList.add(movieNameString);
//		llList.add(movieIdString);
//		llList.add(movieTypeString);
//		llList.add(movieStartDateString);
//		llList.add(runtimeString);
//		llList.add(moviePrice);
//		httpSession.setAttribute("ordermovie", llList);
		// response.getWriter().append("Seeeeeerved at:
		// ").append(request.getContextPath());
		// response.sendRedirect("http://localhost:5500/pages/movieOrder.html");
		// response.setContentType("application/json;charset=utf-8");

	}

}
