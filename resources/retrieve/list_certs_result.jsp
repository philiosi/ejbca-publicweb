<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ include file="header.jsp" %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
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
                    
                            <h6 class="title" style="font-size:30px;"><c:out value="Certificates for ${subject}" /></h6> 
                    
                            <c:choose> 
                                <c:when test="${certificates == null || fn:length(certificates) == 0}"> 
                                    <h6 class="title" style="font-size:30px;"><c:out value="No certificates exist for '${subject}'." /></h6>
                                </c:when>
                                <c:otherwise> 
                                    <c:forEach var="certificate" items="${certificates}">
                                        <%-- <pre> --%>
                                        <ul class="list-group list-group-flush text-left pb-20">
                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="Subject:            ${certificate.subjectDN}" /></li>
                                            
                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="Issuer:             ${certificate.issuerDN}" />
                                            </li>

                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="NotBefore:          ${certificate.validFromString}" />
                                            </li>

                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="NotAfter:           ${certificate.validToString}" />
                                            </li>

                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="Serial number:      ${certificate.serialNumber}" />
                                            </li>

                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="SHA1 fingerprint:   ${certificate.SHA1Fingerprint}" />
                                            </li>

                                            <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                            <c:out value="SHA256 fingerprint: ${certificate.SHA256Fingerprint}" />
                                            </li>
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
