package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cardealership.Car;

//This will be used to manage inventory, i.e. ADD CARS


@WebServlet("/DealershipServlet")  
public class DealershipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DealershipServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		if (cars==null) {
			cars = new ArrayList<Car>();
		}
		
		//Creating a fake database to test the program
		Car newCar1 = new Car("BMW", "X5", "2020", "0", "New", "111111", 46000, "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTC8JlPKLaMDjG3btKaS9yAqy6rW7gzzVy4bAnssIwC5livkA5V");
		LocalDate d1= LocalDate.now();  //setting most of the inventory to newly acquired.
		newCar1.setDateAcquired(d1);
		cars.add(newCar1);
		
		Car newCar2=new Car();
		newCar2.setMake("BMW");
		newCar2.setModel("X3");
		newCar2.setYear("2020");
		newCar2.setMileage("0");
		newCar2.setType("New");
		newCar2.setVinNumber("222222");
		newCar2.setPrice(42300);
		newCar2.setPic("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTo7mW_5EF0sz1KJfoSjL93YWQMXHS4ICU6xhvKCCcZsevxwkL4");
		newCar2.setDateAcquired(d1);
		cars.add(newCar2);
		
		Car newCar3=new Car("Audi", "A3", "2020", "0", "New", "222222", 33300,"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRCz8B3432VWdmddMQCnyOCAcJMyEsegSt_6NXtyNeFFt18SvBh");
		newCar3.setDateAcquired(d1);
		cars.add(newCar3);
	
		Car newCar4 = new Car("Lexus", "RX", "2019", "8000", "Used", "444444", 30000, "https://www.lexus.com/cm-img/visualizer/2020/rx/350/exterior/18in-split-five-spoke-alloy/matador-red-mica/large-1.jpg");
		newCar4.setDateAcquired(d1);
		cars.add(newCar4);
		
		Car newCar5 = new Car("Porsche", "911", "2019", "6000", "Used", "555555", 96000, "https://cka-dash.s3.amazonaws.com/014-0819-CPO835/model1.png");
		newCar5.setDateAcquired(d1);
		cars.add(newCar5);
		
		Car newCar6 = new Car("Mercedez Benz", "G-Class", "2020", "0", "New", "666666", 153000, "https://images.dealer.com/ddc/vehicles/2020/Mercedes-Benz/G-Class/SUV/trim_Base_a85b9b/color/Polar%20White-149-219%2C218%2C212-640-en_US.jpg");
		newCar6.setDateAcquired(d1);
		cars.add(newCar6);

		Car newCar7 = new Car("Infinity", "QX-50", "2020", "0", "New", "777777", 36000, "https://www.infinitiusa.com/content/dam/Infiniti/US/vehicles/QX50/MY20/Vehicle-Profile-Assets/version-2020-infiniti-qx50-pure-liquidplatinum.png.ximg.s_12_h.smart.png");
		newCar7.setDateAcquired(d1);
		cars.add(newCar7);
		
		Car newCar8 = new Car("Acura", "MDX", "2019", "0", "New", "888888", 44500, "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRd8btepeJS1dSF6iM9xxSaWXrrXE2xgLT2bSEa-OP0_3PxnPgS");
		
		//Setting the date acquired of the following 3 cars to older dates
		LocalDate d2=LocalDate.of(2019, 12, 11);
		newCar8.setDateAcquired(d2);
		cars.add(newCar8);
		
		Car newCar9 = new Car("Land Rover", "Range Rover", "2019", "6000", "Used", "999999", 92000, "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRNHNSp0-MlfZL9SOrdcmJVVZf2oC1Avri-lxHepHnOF-01sQoY");
		newCar9.setDateAcquired(d2);
		cars.add(newCar9);
		
		Car newCar10 = new Car("Jaguar", "F-Type", "2019", "4000", "Used", "123456", 61500, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqkfnq-GAGWfNg28dZOxXFSFwyRpHdGRJO5jTfnL89PvIfv_UP");
		newCar10.setDateAcquired(d2);
		cars.add(newCar10);
	
		session.setAttribute("cars", cars);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
