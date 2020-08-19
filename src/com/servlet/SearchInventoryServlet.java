package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cardealership.Car;

@WebServlet("/SearchInventoryServlet")
public class SearchInventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SearchInventoryServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		String carSearch = request.getParameter("carSearch");
		session.setAttribute("carSearch", carSearch);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		if(cars == null) {
			cars = new ArrayList<Car>();
		}
		ArrayList<Car> finds = new ArrayList<Car>();
	
		for(Car car : cars) {
			if((car.getMake().equals(carSearch)) || (car.getModel().equals(carSearch))) {
				finds.add(car);
			}
		}
		
		session.setAttribute("finds", finds);
		RequestDispatcher rs = request.getRequestDispatcher("search.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
