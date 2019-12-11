<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  response.setContentType("text/html; charset="+org.ejbca.config.WebConfiguration.getWebContentEncoding());
  org.ejbca.ui.web.RequestHelper.setDefaultCharacterEncoding(request);
%>

<c:set var="hidemenu" value="${param['hidemenu'] == 'true' ? 'true' : 'false'}" />
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= org.ejbca.config.WebConfiguration.getWebContentEncoding() %>" />
    <!-- ACM META-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="author" content="cosmic">
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business">
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- ACM META END-->

    <title><%= org.ejbca.config.InternalConfiguration.getAppNameCapital() %> Public Web</title>

	  <!-- <link rel="shortcut icon" href="images/favicon.png" type="image/png" />
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script type="text/javascript" src="scripts/functions.js"></script>
    <script type="text/vbscript" src="scripts/functions.vbs"></script> -->

    <!-- ACM Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet">-->

    <!--ACM external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/flexslider.css"/>
    <link href="assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="assets/owlcarousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/owlcarousel/owl.theme.css">

    <link href="css/superfish.css" rel="stylesheet" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- ACM Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="css/component.css">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="js/parallax-slider/modernizr.custom.28468.js">
    </script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>
    <![endif]-->
  </head>

  <body>
    <!-- <div id="header"> -->
      <!--header start-->
    <header class="head-section">
        <div class="navbar navbar-default navbar-static-top container">
            <div class="navbar-header">
                <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <!-- <span class="navbar-brand" href="index.html">A<span>cme</span></a> -->
                <!-- <a class="navbar-brand" href="index.html"><img src="images/banner_ejbca-public.png" alt="EJBCA PKI by PrimeKey" /></a> -->
                <a class="navbar-brand" href="index.html">KISTI <span>Grid CA</span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                        "dropdown" data-toggle="dropdown" href="index.html">Home <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="index.html">Home Parallax</a>
                            </li>
                            <li>
                                <a href="index1.html">Home Seq-slider1</a>
                            </li>
                            <li>
                                <a href="index2.html">Home Seq-slider2</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                        "dropdown" data-toggle="dropdown" href="#">Feature <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="typography.html">Typography</a>
                            </li>
                            <li>
                                <a href="button.html">Buttons</a>
                            </li>
                            <li>
                                <a href="form.html">Form</a>
                            </li>
                            <li>
                                <a href="table.html">Table</a>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#" tabindex="-1">More options</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#" tabindex="-1">Second level</a>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="#">Even More..</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">3rd level</a>
                                            </li>
                                            <li>
                                                <a href="#">3rd level</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Second level</a>
                                    </li>
                                    <li>
                                        <a href="#">Second level</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                        "dropdown" data-toggle="dropdown" href="#">Pages <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="404.html">404 page</a>
                            </li>
                            <li>
                                <a href="career.html">career</a>
                            </li>
                            <li>
                                <a href="login.html">Login</a>
                            </li>
                            <li>
                                <a href="registration.html">Registration</a>
                            </li>
                            <li>
                                <a href="faq.html">FAQ</a>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#" tabindex="-1">Pricing table</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu"></li>
                                    <li>
                                        <a href="price-table-one.html">Pricing table one</a>
                                    </li>
                                    <li>
                                        <a href="price-table-two.html">Pricing table two</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="service.html">Service</a>
                            </li>
                            <li>
                                <a href="terms.html">Terms & Condition</a>
                            </li>
                            <li>
                                <a href="privacy.html">Privacy policy</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                        "dropdown" data-toggle="dropdown" href="#">Portfolio <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-3-col.html">Portfolio 3 column</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">Portfolio 4 column</a>
                            </li>
                            <li>
                                <a href="portfolio-single-image.html">Portfolio Single Image</a>
                            </li>
                            <li>
                                <a href="portfolio-single-video.html">Portfolio Single Video</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                        "dropdown" data-toggle="dropdown" href="#">Blog <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog.html">Blog</a>
                            </li>
                            <li>
                                <a href="blog-two-col.html">Blog two column</a>
                            </li>
                            <li>
                                <a href="blog-detail.html">Blog Single Image</a>
                            </li>
                            <li>
                                <a href="blog-detail-video.html">Blog single video</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                    <li><input class="form-control search" placeholder=" Search" type="text"></li>
                </ul>
            </div>
        </div>
      </header>
      <!--ACM header end-->
    
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
