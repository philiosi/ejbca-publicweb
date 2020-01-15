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
			<div class="col-lg-6">
                <div class="section-title text-left pb-30">
					<h3 class="title text-center">Fetch CA certificates</h3>

					<jsp:useBean id="finder" class="org.ejbca.ui.web.pub.retrieve.CertificateFinderBean" scope="page" />

					<c:forEach var="ca_id" items="${finder.availableCAs}">
						<jsp:useBean id="ca_id" type="java.lang.Integer" />
						<% finder.setCurrentCA(ca_id); %>

						<c:set var="ca" value="${finder.CAInfo}" />

						<hr />
						<h4 class="pb-10"><i class="fas fa-university icon"></i><c:out value="CA: ${ca.name}" /></h4>

						<c:set var="chain" value="${finder.CACertificateChainReversed}" />
						<c:set var="chainsize" value="${fn:length(chain)}" />
					
						<c:choose>
							<c:when test="${chainsize == 0}">
								<p>No CA certificates exist</p>
							</c:when>
							<c:otherwise>
								<c:set var="issuercert" value="${chain[chainsize - 1]}" />
								<c:set var="issuerdn" value="${issuercert.subjectDN}" />

								<div>
								<c:forEach var="cert" items="${chain}" varStatus="status">
									<div class="pb-10" style="padding-left: ${status.index*2}0px ; margin-left: ${status.index*2}0px;">
									<p>
									<c:if test="${status.last}"><b></c:if>
										<i><b><c:out value="${cert.subjectDN}" /></b></i>
									<c:if test="${status.last}"></b></c:if>
									</p>
									<p>
									<!-- Each Certificate -->
									<p class="pl-10"><i class="fas fa-download icon"></i><b><c:out value="CA certificate: " /></b>
									<c:url var="pem" value="../publicweb/webdist/certdist" >
										<c:param name="cmd" value="cacert" />
										<c:param name="issuer" value="${issuerdn}" />
										<c:param name="level" value="${chainsize - status.count}" />
									</c:url>
									<!-- PEM Download -->
									<a href="${pem}" type="button" class="badge certDownLink" >
										<i class="lni-certificate icon"></i>PEM</a>
									<c:url var="ns" value="../publicweb/webdist/certdist" >
										<c:param name="cmd" value="nscacert" />
										<c:param name="issuer" value="${issuerdn}" />
										<c:param name="level" value="${chainsize - status.count}" />
									</c:url>
									<!-- Firefox Download -->									
									<a href="${ns}" type="button" class="badge certDownLink">
										<i class="fab fa-firefox icon"></i>Firefox</a>
									<c:url var="ie" value="../publicweb/webdist/certdist" >
										<c:param name="cmd" value="iecacert" />
										<c:param name="issuer" value="${issuerdn}" />
										<c:param name="level" value="${chainsize - status.count}" />
									</c:url>
									<!-- IE Download -->																		
									<a href="${ie}" type="button" class="badge certDownLink">
										<i class="fab fa-internet-explorer icon"></i></i>IE</a>
									</p>
									</div>
								</c:forEach>
								<p>
								<i class="fas fa-link icon"></i><c:out value="CA certificate chain: " />
								<c:url var="pemchain" value="../publicweb/webdist/certdist" >
									<c:param name="cmd" value="cachain" />
									<c:param name="caid" value="${ca_id}" />
									<c:param name="format" value="pem" />
								</c:url>					
								<a href="${pemchain}" type="button" class="badge certDownLink"><i class="lni-certificate icon"></i>PEM chain</a>, 
								<c:url var="jkschain" value="../publicweb/webdist/certdist" >
									<c:param name="cmd" value="cachain" />
									<c:param name="caid" value="${ca_id}" />
									<c:param name="format" value="jks" />
								</c:url>					
								<a href="${jkschain}" type="button" class="badge certDownLink">JKS truststore</a> (password changeit)
								</p>				
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.inc" %>
