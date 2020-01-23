<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="header.jsp" %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25" style="min-height:940px;">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-10">
                <div class="section-title text-left pb-30">
					<h3 class="title text-center" style="font-size:30px;">Fetch CA certificates</h3>

					<jsp:useBean id="finder" class="org.ejbca.ui.web.pub.retrieve.CertificateFinderBean" scope="page" />

					<c:forEach var="ca_id" items="${finder.availableCAs}">
						<jsp:useBean id="ca_id" type="java.lang.Integer" />
						<% finder.setCurrentCA(ca_id); %>

						<c:set var="ca" value="${finder.CAInfo}" />

						
						<h4 class="pb-10 pt-30 table-title"><i class="fas fa-university icon"></i><c:out value="CA: ${ca.name}" /></h4>
						<table class="table">
						<thead>
							<tr>
								<th scope="col" style="padding-right: 4em;"><i class="fas fa-id-card icon"></i>Distinguished Name</th>
								<th scope="col" style="padding-right: 4em;"><i class="fas fa-download icon"></i>Download</th>
							</tr>
						</thead>

						<c:set var="chain" value="${finder.CACertificateChainReversed}" />
						<c:set var="chainsize" value="${fn:length(chain)}" />
					
						<c:choose>
							<c:when test="${chainsize == 0}">
								<tbody><tr><td>No CA certificates exist</td></tr></table>
							</c:when>
							<c:otherwise>
								<c:set var="issuercert" value="${chain[chainsize - 1]}" />
								<c:set var="issuerdn" value="${issuercert.subjectDN}" />

								<tbody>
									<c:forEach var="cert" items="${chain}" varStatus="status">
									<tr>
										<td style="padding-left: ${status.index}0px; padding-right:4em; margin-left: ${status.index}0px; "> <!-- col DN -->
											<c:if test="${status.last}"><i class="fas fa-angle-right icon"></i><b></c:if>
											<i><c:out value="${cert.subjectDN}" />
											<c:if test="${status.last}"></b></c:if>
										</td>
										<td style="padding-right: 4em;"> <!-- col Download -->
											<i class="fas fa-download icon"></i><b><c:out value="CA certificate: " /></b> <!-- ca certificate -->
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
										</td>
									</tr>
									</c:forEach>
									<tr>
										<td colspan="2" class="text-left" style="padding-right: 4em;">
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
											<a href="${jkschain}" type="button" class="badge certDownLink">JKS truststore</a> <span class="emphasis"> password changeit </span>
										</td>
									</tr>
								</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.inc" %>
