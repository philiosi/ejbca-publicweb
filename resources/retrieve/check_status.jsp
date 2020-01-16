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
                <div class="section-title text-center pb-30 mr-55 ml-55">
					<h6 class="title" style="font-size:30px;">Check certificate status</h6>
					<p>Enter the serial number of a certificate (in hexadecimal form) and click 'Check revocation' to see if the certificate is revoked.</p>
					</div>
          		</div>
      		</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-11 col-sm-12">        
				<div class="card text-center ml-75 mr-75">
					<div class="card-header"> 
						<h3 class="title"> Certificate Data </h3>
					</div>
					<div class="card-body">
						<form action="check_status_result.jsp" enctype="x-www-form-encoded" method="post">
							<input type="hidden" name="hidemenu" value="<c:out value="${hidemenu}" />" />
							<input type="hidden" name="cmd" value="revoked" />
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-id-card icon"></i></span>
								</div>
								<label for="issuer"></label>
								<input name="issuer" id="issuer" placeholder="Issuer DN" type="text" accesskey="i" />
								<br />
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-check icon"></i></span>
								</div>
								<label for="serno"></label>
								<input name="serno" class="form-control" placeholder="Serial No." id="serno" type="text" accesskey="s" />
							</div>
							<br />
							<label for="ok"></label>
							<input type="submit" id="ok" class="main-btn btn float-right login_btn" value="Check revocation" name="submit" />
						</form>
					</div>
              	</div>
          	</div>
      	</div>
  	</div>
</section>
<%@ include file="footer.inc" %>

