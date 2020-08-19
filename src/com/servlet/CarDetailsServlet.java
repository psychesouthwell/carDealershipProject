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


@WebServlet("/CarDetails")
public class CarDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CarDetailsServlet() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		if(cars == null) {
			cars = new ArrayList<Car>();
		}

		String vinNumber = request.getParameter("vinNumber");
		
		
		for(Car car : cars) {
			if((car.getVinNumber().equals(vinNumber))) {
				session.setAttribute("carDetails", car);
				break;
			}
		}
				
		RequestDispatcher rs = request.getRequestDispatcher("carDetails.jsp");
		rs.forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
