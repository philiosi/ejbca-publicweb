<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
			<div class="col-lg-12">
                <div class="section-title text-center pb-30">
                    <c:set var="subject" value="${param.subject}" />
                    <c:choose> 
                        <c:when test="${subject == null || subject == ''}"> 
                            <h6 class="title" style="font-size:30px;">No subject</h6>
                            <p>Please enter a valid subject in the <a href="list_certs.jsp">search form</a>!</p>
                        </c:when>
                        <c:otherwise> 
                            <jsp:useBean id="subject" type="java.lang.String" scope="page" />
                            <jsp:useBean id="finder" class="org.ejbca.ui.web.pub.retrieve.CertificateFinderBean" scope="page" />
                            <jsp:useBean id="certificates" class="java.util.ArrayList" scope="page" />
                        
                            <%
                                finder.lookupCertificatesBySubject(subject, certificates);
                            %>
                    
                            <h1 class="title"><c:out value="Certificates for ${subject}" /></h1> 
                    
                            <c:choose> 
                                <c:when test="${certificates == null || fn:length(certificates) == 0}"> 
                                    <h6 class="title" style="font-size:30px;"><c:out value="No certificates exist for '${subject}'." /></h6>
                                </c:when>
                                <c:otherwise> 
                                    <c:forEach var="certificate" items="${certificates}">
                                        <%-- <pre> --%>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"><c:out value="Subject:            ${certificate.subjectDN}" /></li>
                                            <li class="list-group-item"><c:out value="Issuer:             ${certificate.issuerDN}" /></li>
                                            <li class="list-group-item"><c:out value="NotBefore:          ${certificate.validFromString}" /></li>
                                            <li class="list-group-item"><c:out value="NotAfter:           ${certificate.validToString}" /></li>
                                            <li class="list-group-item"><c:out value="Serial number:      ${certificate.serialNumber}" /></li>
                                            <li class="list-group-item"><c:out value="SHA1 fingerprint:   ${certificate.SHA1Fingerprint}" /></li>
                                            <li class="list-group-item"><c:out value="SHA256 fingerprint: ${certificate.SHA256Fingerprint}" /></li>
                                            <li class="list-group-item"></li>
                                        </ul>
                                        <%-- </pre> --%>
                                        <c:url var="download" value="../publicweb/webdist/certdist" >
                                            <c:param name="cmd" value="eecert" />
                                            <c:param name="issuer" value="${certificate.issuerDN}" />
                                            <c:param name="serno" value="${certificate.serialNumber}" />
                                            <c:param name="hidemenu" value="${hidemenu}" />
                                        </c:url>
                                        <c:if test="${certificate.certificate != null}">
                                            <a href="${download}" type="button" class="btn btn-primary">Download certificate</a>
                                        </c:if>
                                        <c:url var="check_status" value="check_status_result.jsp" >
                                            <c:param name="issuer" value="${certificate.issuerDN}" />
                                            <c:param name="serno" value="${certificate.serialNumber}" />
                                            <c:param name="hidemenu" value="${hidemenu}" />
                                        </c:url>
                                            <a href="${check_status}" type="button" class="btn btn-info">Check if certificate is revoked</a>
                                    </c:forEach>
                                </c:otherwise> 
                            </c:choose> 
                        </c:otherwise> 
                    </c:choose> 
                </div>
            </div>
        </div>
    </div>
</section>

    
<%@ include file="footer.inc" %>
