<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setContentType("text/html; charset="+org.ejbca.config.WebConfiguration.getWebContentEncoding());
   org.ejbca.ui.web.RequestHelper.setDefaultCharacterEncoding(request);
%>

<c:set var="hidemenu" value="${param['hidemenu'] == 'true' ? 'true' : 'false'}" />
<html lang="en">
<head>
    <!--====== Required meta tags ======-->
    <meta http-equiv="Content-Type" content="text/html; charset=<%= org.ejbca.config.WebConfiguration.getWebContentEncoding() %>" />
    <meta http-equiv="x-ua-compatible" content="IE=10">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--====== Title ======-->
    <title>Enroll < KISTI CA</title>

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/png">

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="../assets/css/LineIcons.css">

    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">

    <!--====== Default css ======-->
    <link rel="stylesheet" href="../assets/css/default.css">

    <!--====== Style css ======-->
    <link rel="stylesheet" href="../assets/css/style.css">

    <!--====== w3 css ======-->
    <%-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> --%>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <script type="text/javascript" src="../scripts/functions.js"></script>
    <script type="text/vbscript" src="../scripts/functions.vbs"></script>
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
                          <a class="navbar-brand" href="../index.jsp">
                              <img src="../assets/images/logo.png" alt="Logo" style="width: 3em;">
                          </a> <!-- Logo -->
                          <button class="navbar-toggler" type="button" data-toggle="collapse"
                              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                              aria-expanded="false" aria-label="Toggle navigation">
                              <span class="toggler-icon"></span>
                              <span class="toggler-icon"></span>
                              <span class="toggler-icon"></span>
                          </button>

                          <div class="collapse navbar-collapse" id="navbarSupportedContent">
                              <ul class="navbar-nav ml-auto">
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#home">Home</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#about">KISTI CA</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#service">GRID RESOURCES</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#register">registration</a></li>
                                  <li class="nav-item active"><a class="page-scroll" href="../index.jsp#certificates">Certificates</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#contact">Contact</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#site">Reference</a></li>
                              </ul>
                          </div> <!-- navbar collapse -->
                      </nav> <!-- navbar -->
                  </div>
              </div> <!-- row -->
          </div> <!-- container -->
      </div> <!-- navigation -->    
    </header>