<!DOCTYPE html> 
<%@ page pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!--for apply_main.jsp-->

<%@ page import="java.sql.*" %>
<%@ page import="org.mariadb.jdbc.Driver" %>
<%-- <%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %> --%>

<%
  response.setContentType("text/html; charset="+org.ejbca.config.WebConfiguration.getWebContentEncoding());
  org.ejbca.ui.web.RequestHelper.setDefaultCharacterEncoding(request);
%> 

<c:set var="hidemenu" value="${param['hidemenu'] == 'true' ? 'true' : 'false'}" />
<html lang="en">
<head>
    <!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--====== Title ======-->
    <title>KISTI CA</title>

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap.css"> -->

    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">

    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <!--====== Default css ======-->
    <link rel="stylesheet" href="assets/css/default.css">

    <!--====== Style css ======-->
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
  
<body>
    <!--====== PRELOADER PART START ======-->

    <div class="preloader">
      <div class="loader_34">
          <div class="ytp-spinner">
              <div class="ytp-spinner-container">
                  <div class="ytp-spinner-rotator">
                      <div class="ytp-spinner-left">
                          <div class="ytp-spinner-circle"></div>
                      </div>
                      <div class="ytp-spinner-right">
                          <div class="ytp-spinner-circle"></div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
    </div>

    <!--====== PRELOADER ENDS START ======-->

    <!--====== HEADER PART START ======-->

    <header id="home" class="header-area">
      <div class="navigation fixed-top">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12">
                      <nav class="navbar navbar-expand-lg">
                          <a class="navbar-brand" href="index.jsp">
                              <img src="assets/images/logo.png" alt="Logo" style="width: 3em;">
                          </a> <!-- Logo -->
                          <button class="navbar-toggler" type="button" data-toggle="collapse"
                              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                              aria-expanded="false" aria-label="Toggle navigation">
                              <span class="toggler-icon"></span>
                              <span class="toggler-icon"></span>
                              <span class="toggler-icon"></span>
                          </button>
                          <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="nav navbar-nav ml-auto">
                                    <li class="nav-item active"><a class="page-scroll" href="#home">Home</a></li>
                                    <li class="nav-item"><a class="page-scroll" href="#about">KISTI CA</a></li>
                                    <li class="nav-item"><a class="page-scroll" href="#service">GRID RESOURCES</a></li>
                                    <li class="nav-item"><a class="page-scroll" href="#register">registration</a></li>
                                    <li class="nav-item dropdown-submenu">
                                        <a class="page-scroll dropdown-toggle" href="#certificates" data-toggle="dropdown">CERTIFICATE</a>
                                        <ul class="nav navbar-nav dropdown-menu dropdown" style="border-top:none; border-bottom:none;">
                                            <li class="nav-item dropdown-submenu">
                                                <a href="#" class="dropdown-toggle sub" data-toggle="dropdown">Enroll</a>
                                                <ul class="dropdown-menu dropdown menu-3rd" style="border-left:none; border-right:none;">
                                                    <li class="nav-item ml-0"><a class="sub" href="enrol/browser.jsp">Create Browser Certificate</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="enrol/server.jsp">Create Certificate from CSR</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="enrol/keystore.jsp">Create Keystore</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu">
                                                <a href="#" class="dropdown-toggle sub" data-toggle="dropdown">Retrieve </a>
                                                <ul class="dropdown-menu dropdown menu-3rd" style="border-left:none; border-right:none;">
                                                    <li class="nav-item ml-0"><a class="sub" href="retrieve/ca_certs.jsp">Fetch CA Certificates</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="retrieve/ca_crls.jsp">Fetch CA CRLs</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="retrieve/list_certs.jsp">List User's Certificate</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="retrieve/latest_cert.jsp">List User's Last Certificate</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu">
                                                <a href="#" class="dropdown-toggle sub" data-toggle="dropdown">Inspect</a>
                                                <ul class="dropdown-menu dropdown menu-3rd" style="border-left:none; border-right:none;">
                                                    <li class="nav-item ml-0"><a class="sub" href="inspect/request.jsp">Inspect Certificate/CSR</a></li>
                                                    <li class="nav-item ml-0"><a class="sub" href="retrieve/check_status.jsp">Check Certificate Status</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item"><a class="page-scroll" href="#contact">Contact</a></li>
                                    <li class="nav-item"><a class="page-scroll" href="#reference">Reference</a></li>
                                </ul>
                            </div> <!-- navbar collapse -->
                          <%-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
                              <ul class="navbar-nav ml-auto">
                                  <li class="nav-item active"><a class="page-scroll" href="#home">Home</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#about">KISTI CA</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#service">GRID RESOURCES</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#register">registration</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#certificates">Certificates</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#contact">Contact</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="#site">Reference</a></li>
                              </ul>
                          </div> <!-- navbar collapse --> --%>
                      </nav> <!-- navbar -->
                  </div>
              </div> <!-- row -->
          </div> <!-- container -->
      </div> <!-- navigation -->
    </header>
    
    
