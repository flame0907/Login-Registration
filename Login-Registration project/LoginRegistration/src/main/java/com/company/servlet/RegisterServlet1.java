package com.company.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.model.User;
import com.company.dao.UserDao;
import com.company.dao.UserDaoImp;

/**
 * Servlet implementation class RegisterServlet1
 */
public class RegisterServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao=new UserDaoImp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
    

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        //UserDao userDao = new UserDaoImpl();
        if (userDao.addUser(user)) {
            response.sendRedirect("Login.jsp?registration=success");
        } else {
            response.sendRedirect("Register.jsp?error=1");
        }
    }

}
