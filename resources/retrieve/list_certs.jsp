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
                                <li class="nav-item pt-10 pb-10 pl-30 pr-12"><a href="../inpect/request.jsp" class="nav-alink-b nav-sub">Inspect Certificate</a></li>
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
                  <h6 class="title" style="font-size:30px;">List certificates</h6>
                  <p>Enter the subject DN (e.g., &quot<code>c=SE, O=AnaTom, CN=foo</code>&quot;) to list a user's certificates.</p>
              </div>
          </div>
      </div>
      <div class="row justify-content-center">
          <div class="col-lg-8 col-md-11 col-sm-12">        
              <div class="card text-center ml-75 mr-75">
                  <div class="card-header"> 
                      <h3 class="title"> Distinguished Name </h3>
                  </div>
                  <div class="card-body">
                      <form action="list_certs_result.jsp" enctype="x-www-form-encoded" method="post">
                          <div class="input-group form-group">
                              <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-user"></i></span>
                              </div>

                              <input type="hidden" name="hidemenu" value="<c:out value="${hidemenu}" />" />
                              <input type="hidden" name="cmd" value="listcerts" />

                              <label for="subject"></label>
                              <input name="subject" class="form-control" placeholder="Subject DN" id="subject" type="text" size="60" accesskey="s" />
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
