<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
      <%@page import="java.sql.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
 
<%@page import="java.sql.Statement" %> 
<%@page language="java" import="java.util.*"%>
<%@page language="java" import="java.util.*"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PFE</title>
 <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>
  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="">Espace Secr�taite</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
   
      
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
           
          <div class="dropdown-divider"></div>
           Bonjour <%=session.getAttribute("userid")%>

          <a class="dropdown-item" href="login_admin" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="d_sec.jsp">
          <i class="fas fa-fw fa-user"></i>
          <span>Dashboard</span>
        </a>
        
      </li>
           <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="espace_sec.jsp"  >
          <i class="fas fa-fw fa-user"></i>
          <span>Gestion Patient</span>
        </a>
      
      </li> 
      
    
      
           <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="sec_dossier.jsp"  >
          <i class="fas fa-fw fa-user"></i>
          <span>Gestion Dossier</span>
        </a>
      
      </li> 
      
      
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="sec_admission.jsp"  >
          <i class="fas fa-fw fa-user"></i>
          <span>Gestion admission </span>
        </a>
      
      </li> 
      
     
   
   
   
   
   
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
      

        <!-- Icon Cards-->
        <div class="row">
      
          
     
        </div>

        <!-- Area Chart Example-->
        
