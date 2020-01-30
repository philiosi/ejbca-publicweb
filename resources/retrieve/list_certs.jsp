<%@ include file="header.jsp" %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-8 col-md-11 col-sm-12"> 
              <div class="section-title text-center pb-30">
                  <h6 class="title" style="font-size:30px;">List certificates</h6>
                  <p>Enter the subject DN (e.g., &quot<code>c=SE, O=AnaTom, CN=foo</code>&quot;) to list a user's certificates.</p>
              </div>
          </div>
      </div>
      <div class="row justify-content-center">
          <div class="col-lg-8 col-md-11 col-sm-12">        
              <div class="card text-center ml-auto mr-auto">
                  <div class="card-header"> 
                      <h3 class="title"> DISTINGUISHED NAME </h3>
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
