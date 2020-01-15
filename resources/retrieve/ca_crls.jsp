<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<section id="about" class="about-area pt-90">
    <div class="navigation-2nd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <span class="nav-item emphasis-mid pt-10 pb-10 pr-30 nav-sub nav-alink-b"><a href="../enrol/browser.jsp"> Enroll</span>
                                <li class="nav-item emphasis-mid pt-10 pb-10 pr-30 nav-sub nav-alink-b">Fetch Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/ca_certs.jsp" class="nav-alink">Fetch CA Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/ca_crls.jsp" class="nav-alink">Fetch CA CRLs</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/list_certs.jsp" class="nav-alink">List User's Certificates</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/latest_cert.jsp" class="nav-alink">Fetch User's Lastest Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pl-30 pr-12"><a href="../inspect/request.jsp" class="nav-alink-b nav-sub">Inspect Certificate</a></li>
                            </ul>
                        </ul>
                        </div> <!-- navbar collapse -->
                    </nav> <!-- navbar -->
                </div>
            </div>
        </div>
    </div>
</section>

<section id="certificates" class="service-area gray-bg pt-30 pb-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
                <div class="section-title text-left pb-30">
					<h3 class="title text-center" style="font-size:30px" >Fetch CA CRLs</h3>

					<jsp:useBean id="finder" class="org.ejbca.ui.web.pub.retrieve.CertificateFinderBean" scope="page" />

					<c:forEach var="ca_id" items="${finder.availableCAs}">
						<jsp:useBean id="ca_id" type="java.lang.Integer" />
						<% finder.setCurrentCA(ca_id); %>

						<c:set var="caName" value="${finder.CAInfo.name}" />
						<c:set var="caDN" value="${finder.CADN}" />

						<c:url var="der" value="../publicweb/webdist/certdist" >
							<c:param name="cmd" value="crl" />
							<c:param name="issuer" value="${caDN}" />
						</c:url>
						<c:url var="pem" value="../publicweb/webdist/certdist" >
							<c:param name="cmd" value="crl" />
							<c:param name="format" value="PEM" />
							<c:param name="issuer" value="${caDN}" />
						</c:url>
						
						<% if(finder.existsDeltaCrlForCurrentCA()) { %>
						<c:url var="derdelta" value="../publicweb/webdist/certdist" >
							<c:param name="cmd" value="deltacrl" />
							<c:param name="issuer" value="${caDN}" />
						</c:url>
						<c:url var="pemdelta" value="../publicweb/webdist/certdist" >
							<c:param name="cmd" value="deltacrl" />
							<c:param name="format" value="PEM" />
							<c:param name="issuer" value="${caDN}" />
						</c:url>
						<% } %>

						<hr />
						<h4 class="pb-10"><i class="fas fa-university icon"></i><c:out value="CA: ${caName}" /></h4>
						<table class="table">
						<thead>
							<tr>
								<th scope="col" style="text-align: left;">CRL</th>
								<th scope="col" style="text-align: left;">Delta CRL</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="padding-right: 4em;">
									<ul>
										<li><a href="${der}" style="color:#8a8fa3;">DER format</a></li> 
										<li><a href="${pem}" style="color:#8a8fa3;">PEM format</a></li> 
									</ul>
								</td>
								<td>
								<% if(finder.existsDeltaCrlForCurrentCA()) { %>
									<ul>
										<li><a href="${derdelta}" style="color:#8a8fa3;">DER format</a></li> 
										<li><a href="${pemdelta}" style="color:#8a8fa3;">PEM format</a></li> 
									</ul>
									<% } else { %>
										<p><i>None available</i><p>
									<% } %>
								</td>
							</tr>
						</tbody>
						</table>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="footer.inc" %>
