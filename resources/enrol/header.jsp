<!DOCTYPE html> 
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
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--====== Title ======-->
    <title>KISTI CA</title>

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/png">

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap.css"> -->

    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="../assets/css/LineIcons.css">

    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">

    <!--====== Default css ======-->
    <link rel="stylesheet" href="../assets/css/default.css">

    <!--====== Style css ======-->
    <link rel="stylesheet" href="../assets/css/style.css">

    <!--====== w3 css ======-->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
                                  <li class="nav-item active"><a class="page-scroll" href="../index.jsp#home">Home</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#about">KISTI CA</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#service">GRID RESOURCES</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#enroll">registration</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#certificates">Certificates</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#contact">Contact</a></li>
                                  <li class="nav-item"><a class="page-scroll" href="../index.jsp#site">Reference</a></li>
                              </ul>
                          </div> <!-- navbar collapse -->
                      </nav> <!-- navbar -->
                  </div>
              </div> <!-- row -->
          </div> <!-- container -->
      </div> <!-- navigation -->    
    
    <!-- <div id="banner">
			<a href="."><img src="images/banner_ejbca-public.png" alt="EJBCA PKI by PrimeKey" /></a>
    </div>
    
    </div>  id=header -->


    <!-- <c:if test="${hidemenu != 'true'}">
    <div class="w3-sidebar w3-bar-block" style="width:25%">
      <div class="menu">
        <ul>
          <li><div class="menuheader">Enroll</div>
            <ul>
              <li>
                <a href="enrol/browser.jsp">Create Browser Certificate</a>
              </li>
              <li>
                <a href="enrol/server.jsp">Create Certificate from CSR</a>
              </li>
              <li>
                <a href="enrol/keystore.jsp">Create Keystore</a>
              </li>
              <li>
                <a href="enrol/cvcert.jsp">Create CV certificate</a>
              </li>
              <% if(org.ejbca.config.WebConfiguration.getRenewalEnabled()) { %>
              <li>
                <a href="renew/">Renew Browser Certificate</a>
              </li>
              <% } %>
            </ul>
          </li>
          <li><div class="menuheader">Register</div>
            <ul>
              <li>
                <a href="enrol/reg.jsp">Request Registration</a>
              </li>
            </ul>
          </li>
          <li><div class="menuheader">Retrieve</div>
            <ul>
              <li>
                <a href="retrieve/ca_certs.jsp">Fetch CA Certificates</a>
              </li>
              <li>
                <a href="retrieve/ca_crls.jsp">Fetch CA CRLs</a>
              </li>
              <li>
                <a href="retrieve/list_certs.jsp">List User's Certificates</a>
              </li>
              <li>
                <a href="retrieve/latest_cert.jsp">Fetch User's Latest Certificate</a>
              </li>
            </ul>
          </li>  
          <li><div class="menuheader">Inspect</div>
            <ul>
              <li>
                <a href="inspect/request.jsp">Inspect certificate/CSR</a>
              </li>
                <li>
                <a href="retrieve/check_status.jsp">Check Certificate Status</a>
              </li>
            </ul>
          </li>
          <li><div class="menuheader">Miscellaneous</div>
            <ul>
              <li>
                <% java.net.URL adminURL = new java.net.URL("https",org.ejbca.util.HTMLTools.htmlescape(request.getServerName()),
                		org.ejbca.config.WebConfiguration.getExternalPrivateHttpsPort(),
                		"/"+org.ejbca.config.InternalConfiguration.getAppNameLower()+"/adminweb/");  %>
                <a href="<%=adminURL.toString() %>">Administration</a>
              </li>
              <% if (!"disabled".equalsIgnoreCase(org.ejbca.config.WebConfiguration.getDocBaseUri())) {
                  if ("internal".equalsIgnoreCase(org.ejbca.config.WebConfiguration.getDocBaseUri())) { %>
              <li>
                <a href="doc/index.html" target="<%= org.ejbca.config.GlobalConfiguration.DOCWINDOW %>">Documentation</a>
              </li>
              <%  } else { %>
              <li>
                <a href="<%= org.ejbca.config.WebConfiguration.getDocBaseUri() %>/concepts.html" target="<%= org.ejbca.config.GlobalConfiguration.DOCWINDOW %>">Documentation</a>
              </li>
              <%  }
                 } %>
              <% if (org.ejbca.config.WebConfiguration.isProxiedAuthenticationEnabled()) { %>
              <li>
                <a href="/logout">Logout</a>
              </li>
              <% } %>
            </ul>
          </li>  
        </ul>
      </div>
    </div>
    <div class="main" style="margin-left: 25%;">
      <div class="content">
    </c:if>

    <c:if test="${hidemenu == 'true'}">
    <div class="main hidemenu">
      <div class="content hidemenu">
    </c:if> -->
