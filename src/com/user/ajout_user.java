package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ajout_user
 */
@WebServlet("/ajout_user")
public class ajout_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajout_user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null; 
	   	 
	 	   
	  	  try {
	  		String a=request.getParameter("textfield");
	  		String b=request.getParameter("textfield2");
	  		String c=request.getParameter("textfield3");
	  		String d=request.getParameter("textfield4");

	  		String e=request.getParameter("textfield5");

	  		 
 	  		 
	  		Class.forName("com.mysql.jdbc.Driver");

	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		Statement st=con.createStatement();

	  		String q1=" INSERT INTO `user`(`nom`, `prenom`, `gsm` ,`login`, `pwd`, `role`) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','1')";
	System.out.println(q1);
	st.executeUpdate(q1);
	 //System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/espace_admin.jsp"); 
	  	                         dispatcher.forward(request, response);

	  	                         }

	  	                       catch (ClassNotFoundException e) {
	  	                       		e.getCause();
	  	                       		System.out.println("Le driver JDBC pour MYSQL est introuvable");
	  	                       	}
	  	                             catch (SQLException e) {
	  	                       		e.getCause();
	  	                       		System.out.println("Un probleme de connexion est sourvenu, v�rfier la chaine de connexion");

	  	                             }
	  
	  
	  
	  
		}

	 
	}
