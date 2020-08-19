package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cardealership.Car;
import com.cardealership.Customer;


@WebServlet("/PurchasingServlet")
public class PurchasingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public PurchasingServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);

		//Check for a fair offer
		boolean goodOffer=false;
		Car carWanted = (Car) session.getAttribute("carDetails");

		if(request.getParameter("offer") !=null) {
			double offer = Double.parseDouble(request.getParameter("offer"));
			double minimumOffer = carWanted.getPrice() * .9;                    //10% off

			if(offer >= minimumOffer) {
				goodOffer=true;
			}
		}
		else {
			goodOffer=true;
		}
				
		if (goodOffer == true) {
			
			//Current cars in stock
			ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
			Car carPurchased = carWanted;
			
			//Remove purchased car
			cars.remove(carPurchased);		
			session.setAttribute("cars",cars);
			
			//Create a customer object to store in sales records
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String socialSecurity = request.getParameter("socialSecurity");
			Date purchaseDate= new Date();
			Customer newCustomer = new Customer(firstName, lastName, socialSecurity, carPurchased, purchaseDate);

			//Make array of all purchases to display in table on Admin page
			ArrayList<Customer> records = (ArrayList<Customer>) session.getAttribute("records");
			if(records == null) {
				records = new ArrayList<Customer>();
			}
			records.add(newCustomer);

			session.setAttribute("records", records);
			RequestDispatcher rs = request.getRequestDispatcher("dealershipAdmin.jsp"); //sending response to sales records. Ideally the customer would receive a purchase confirmation
			rs.forward(request, response);			

		}else {
			RequestDispatcher rs=request.getRequestDispatcher("purchase.jsp");         //redirect to purchase page to make another offer.
			rs.forward(request, response);	
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
