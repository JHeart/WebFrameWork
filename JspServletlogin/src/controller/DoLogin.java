package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;

/**
 * Servlet implementation class DoLogin
 */
@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerId=request.getParameter("customerid");
		String password=request.getParameter("password");
		
		CustomerService service=new CustomerService();
		Customer customer = service.findCustomer(customerId, password);
		
		request.setAttribute("customer",customer);
		
		String nextpage=null;
		
		if(customer==null)
			nextpage="/view/error.jsp";
		else
			nextpage="/view/form.jsp";
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(nextpage);
		dispatcher.forward(request,response);
	}

}
