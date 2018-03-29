package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Order;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Formdata")
public class Formdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Formdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			PrintWriter pw = response.getWriter();
			
			//String commamd=request.getParameter("command");
			
			
			String cardNum=request.getParameter("CreditCardNumber");
			String repeatcardNum=request.getParameter("RepeatCreditCardNumber");
			String cardType=request.getParameter("CreditCard");
			String price=request.getParameter("PriceEach");
			String initial=request.getParameter("MiddleIntial");
			String itemNum=request.getParameter("ItemNumber");
			String address=request.getParameter("ShippingAddress");
			String firstName=request.getParameter("FirstName");
			String description = request.getParameter("Desription");
			String lastName=request.getParameter("LastName");
		
			/*if(cardNum!=repeatcardNum) {
				pw.println("not equals");
				RequestDispatcher dispatcher= request.getRequestDispatcher("/view/form.jsp");
				dispatcher.forward(request,response);
			}*/
			
			
			Order order= new Order(cardNum, cardType, price, initial, itemNum, address, firstName, lastName, description);
			Hashtable<String,Order> ht = new Hashtable<>();
			ht.put("1", order);
			request.setAttribute("result", ht);//기존의 자바 코드를 사용하기 위하여생성
			request.setAttribute("b",order);//jsp expression로 코드를 사용하기 위하여생성
			
			String page=null;
			page="/view/order.jsp";
			
			RequestDispatcher dispatcher= request.getRequestDispatcher(page);
			dispatcher.forward(request,response);
	}



}
