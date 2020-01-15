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
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/latest_certs.jsp" class="nav-alink">Fetch User's Lastest Certificate</a></li>
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
                <div class="section-title text-center pb-30">
					<h6 class="title" style="font-size:30px;">Certificate Status</h6>
				    <c:set var="issuer" value="${param.issuer}" />
					<c:set var="serno" value="${param.serno}" />

					<c:choose> 
						<c:when test="${issuer == null || issuer == ''}">
							<h6 class="title">No issuer</h6>
							<ul class="list-group list-group-flush">	
								<li class="list-group-item">Please enter a valid issuer in the <a href="<c:url value="check_status.jsp"> <c:param name="hidemenu" value="${hidemenu}"/> </c:url>" >search form</a>!</li>
							</ul>
						</c:when>
						<c:when test="${serno == null || serno == ''}"> 
							<h6 class="title">No serial number</h6>
							<ul class="list-group list-group-flush">	
								<li class="list-group-item">Please enter a valid serial number in the <a href="<c:url value="check_status.jsp"> <c:param name="hidemenu" value="${hidemenu}"/> </c:url>" >search form</a>!</li>
							</ul>
						</c:when>
						<c:otherwise> 
							<jsp:useBean id="finder" class="org.ejbca.ui.web.pub.retrieve.CertificateFinderBean" scope="page" />
							<jsp:useBean id="issuer" type="java.lang.String" scope="page" />
							<jsp:useBean id="serno" type="java.lang.String" scope="page" />
							<jsp:useBean id="certInfo" class="org.cesecore.certificates.crl.RevokedCertInfo" scope="page" />
							<%
								finder.lookupRevokedInfo(issuer, serno, certInfo);
							%>
						
							<c:choose> 
								<c:when test="${certInfo.userCertificate == null}"> 
									<h6 class="title">The certificate does not exist!</h6>
								</c:when> 
								<c:otherwise> 
									<ul class="list-group list-group-flush">	
										<li class="list-group-item"><c:out value="Issuer: ${issuer}" /></li>
										<li class="list-group-item"><c:out value="Serial number: ${serno}" /></li>
									</ul>
									<c:choose> 
										<c:when test="${certInfo.revoked}"> 
											<h6 class="title">The certificate has been REVOKED!</h6>
											<ul class="list-group list-group-flush">	
												<li class="list-group-item">The revocation date is ${certInfo.revocationDate}.</li>
												<li class="list-group-item">The reason for revocation was &quot;<c:out value="${certInfo.humanReadableReason}"/>&quot; (${certInfo.reason}).</li>
											</ul>
										</c:when> 
										<c:otherwise>
											<ul class="list-group list-group-flush">	
												<li class="list-group-item">The certificate has <strong>NOT</strong> been revoked.</li>
											</ul>
										</c:otherwise> 
									</c:choose> 
						
								</c:otherwise> 
							</c:choose> 
						</c:otherwise>
					</c:choose>
<%@ include file="footer.inc" %>
