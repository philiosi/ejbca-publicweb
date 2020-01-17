<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>


<section id="certificates" class="service-area gray-bg pt-30 pb-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6">
                <div class="section-title text-left pb-30">
					<h6 class="title text-center" style="font-size:30px;">Certificate Status</h6>
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
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="footer.inc" %>
