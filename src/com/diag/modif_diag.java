package com.diag;

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
 * Servlet implementation class modif_diag
 */
@WebServlet("/modif_diag")
public class modif_diag extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modif_diag() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null; 
	   	 
	 	   
	  	  try {

	  		Class.forName("com.mysql.jdbc.Driver");
	  		 
	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		 
	  		Statement st=con.createStatement();
	  
	  	                       //int id=Integer.parseInt(request.getParameter("id"));
	  	                       String specialite=request.getParameter("textfield");
	  	                       String id=request.getParameter("id");

	//----------------------------------------------------------------------------------
	  	                     String q1="UPDATE `diag` SET `description`= '" +specialite+ "' where id='" +id+ "'";
	System.out.println(q1);
	st.executeUpdate(q1);
	 //System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/admin_diag.jsp"); 
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
