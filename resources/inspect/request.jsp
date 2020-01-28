 <%@ include file="header.jsp" %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-12"> 
              <div class="section-title text-center pb-30">
                  <h6 class="title" style="font-size:30px;">Inspect certificate/CSR</h6>
              </div>
          </div>
      </div>
      <div class="row justify-content-center">
          <div class="col-lg-8 col-md-11 col-sm-12">        
              <div class="card text-center ml-75 mr-75">
                  <div class="card-header"> 
                      <h3 class="title"> INSPECT </h3>
                  </div>
                  <div class="card-body">
                      <form enctype="multipart/form-data" method="post" action="<c:url value="request_result.jsp"> <c:param name="hidemenu" value="${hidemenu}"/> </c:url>" >
                        <p class="emphasis-mid text-left">Upload request to dump contents.</p>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-upload icon"></i><label for="pkcs10file"></label></span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="reqfile" id="reqfile"></input>
                                <label class="custom-file-label" for="reqfile" style="text-align:left;">Certificate of CSR file</label>
                            </div>
                        </div>
                        <br />
                        <label for="ok"></label>
                        <input type="submit" id="ok" class="main-btn btn float-right login_btn" value="OK" name="submit" />
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
</section>

<%@ include file="footer.inc" %>
