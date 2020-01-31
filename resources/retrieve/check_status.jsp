<%@ include file="header.jsp" %>


<section id="certificates" class="service-area gray-bg pt-130 pb-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
                <div class="section-title text-center pb-30 mr-55 ml-55">
					<h6 class="title" style="font-size:30px;">Check certificate status</h6>
					<p>Enter the serial number of a certificate (in hexadecimal form) and click 'Check revocation' to see if the certificate is revoked.</p>
				</div>
          	</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-11 col-sm-12">        
				<div class="card text-center ml-auto mr-auto">
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
								<input name="issuer" class="form-control" id="issuer" placeholder="Issuer DN" type="text" accesskey="i" />
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

