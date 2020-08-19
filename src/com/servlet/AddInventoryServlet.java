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

@WebServlet("/AddInventory")
public class AddInventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddInventoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		if (cars==null) {
			cars = new ArrayList<Car>();
		}
		
		Car car = new Car();
		car.setMake(request.getParameter("make"));
		car.setModel(request.getParameter("model"));
		car.setYear(request.getParameter("year"));
		car.setMileage(request.getParameter("mileage"));
		car.setType(request.getParameter("type"));
		car.setVinNumber(request.getParameter("vinNumber"));
		car.setPrice(Double.parseDouble(request.getParameter("price")));
		car.setPic(request.getParameter("pic"));
		cars.add(car);
		
		session.setAttribute("cars", cars);
		RequestDispatcher rs = request.getRequestDispatcher("vehicles.jsp");
		rs.forward(request, response);

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
