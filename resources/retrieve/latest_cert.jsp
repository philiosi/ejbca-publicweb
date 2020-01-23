<%@ include file="header.jsp" %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
        <div class="section-title text-left pb-30 mr-55 ml-55">
          <h3 class="title text-center" style="font-size:30px" >Fetch User's Certificate (latest)</h3>
          <p>Give subject DN to fetch users latest certificate.</p><br />

          <p class="emphasis-mid"> Note that the order or case of element descriptors in the DN (C, O, CN, etc.) is unimportant.
          The case of elements themselves, on the other hand, <em>IS</em> important.
          </p>
          <p> For example, <code>cn=foo</code> is considered equal to <code>CN=foo</code> but different from <code>cn=FOO</code>.</p>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-8 col-md-11 col-sm-12">
        <div class="card text-center mt-10 mr-55 ml-55">
          <div class="card-header "> 
            <h3 class="title"> NAME </h3>
          </div>
          <div class="card-body">  
            <form action="../publicweb/webdist/certdist" enctype="x-www-form-encoded" method="post">
              <%-- <fieldset> --%>
                <input type="hidden" name="hidemenu" value="<c:out value="${hidemenu}" />" />
                <input type="hidden" name="cmd" value="lastcert" />

                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-id-card icon"></i></span>
                  </div>
                  <label for="subject"></label>
                  <input name="subject" id="subject" type="text" class="form-control" placeholder="Subject DN" accesskey="s" />
                </div>          

                <div class="form-group" style="text-align:right;">
                  <label for="ok"></label>
                  <input id="ok" class="main-btn btn float-right login_btn" type="submit" value="OK" style="font-family: Poppins, sans-serif; font-weight: 500;" >
                </div>
              <%-- </fieldset> --%>
            </form>
          </div>
          <div class="card-footer">
            <div class="d-flex justify-content-center links">
                <label class="pt-20 pr-20"><i class="fas fa-exclamation-triangle icon"></i>Note</label>
                <p class="text-left">If you receive a <span class="emphasis-mid">404-Not found</span> response, it means that
                  the subject does not have a certificate in the database. Check your entry to make sure 
                  you have specified all the DN components.
                </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<%@ include file="footer.inc" %>
