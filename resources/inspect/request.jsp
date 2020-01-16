 <%@ include file="header.jsp" %>

 <section id="about" class="about-area pt-90">
    <div class="navigation-2nd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <span class="nav-item pt-10 pb-10 pr-30"><a href="../enrol/browser.jsp" class="nav-sub nav-alink-b"> Enroll</span>
                                <li class="nav-item pt-10 pb-10 pr-30 nav-sub nav-alink-b"><a href="../retrieve/list_certs.jsp" class="nav-sub nav-alink-b"> Fetch Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../inpect/request.jsp" class="nav-alink-b nav-sub">Inspect Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../inspect/request.jsp" class="nav-alink">Inspect certificate/CSR</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/check_status.jsp" class="nav-alink">Check certificate status</a></li>
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
                                <label class="custom-file-label" for="reqfile">Certificate of CSR file</label>
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
