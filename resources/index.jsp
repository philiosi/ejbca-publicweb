<%@ include file="header.jsp" %> 

  <div id="parallax" class="header-content d-flex align-items-center">
      <div class="header-shape shape-one layer" data-depth="0.10">
          <img src="assets/images/banner/shape/shape-1.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-tow layer" data-depth="0.30">
          <img src="assets/images/banner/shape/shape-2.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-three layer" data-depth="0.40">
          <img src="assets/images/banner/shape/shape-3.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-fore layer" data-depth="0.60">
          <img src="assets/images/banner/shape/shape-2.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-five layer" data-depth="0.20">
          <img src="assets/images/banner/shape/shape-1.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-six layer" data-depth="0.15">
          <img src="assets/images/banner/shape/shape-4.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-seven layer" data-depth="0.50">
          <img src="assets/images/banner/shape/shape-5.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-eight layer" data-depth="0.40">
          <img src="assets/images/banner/shape/shape-3.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-nine layer" data-depth="0.20">
          <img src="assets/images/banner/shape/shape-6.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="header-shape shape-ten layer" data-depth="0.30">
          <img src="assets/images/banner/shape/shape-3.png" alt="Shape">
      </div> <!-- header shape -->
      <div class="container">
          <div class="row align-items-center">
              <div class="col-xl-5 col-lg-6">
                  <div class="header-content-right">
                      <h4 class="sub-title">Welcome,</h4>
                      <h1 class="title">KISTI CA</h1>
                      <p>(KISTI Certification Authority)</p>
                      <a class="main-btn" href="#certificates">REQUEST CERTIFICATES</a>
                  </div> <!-- header content right -->
              </div>
              <div class="col-lg-6 offset-xl-1">
                  <div class="header-image d-none d-lg-block">
                      <img src="assets/images/banner/kisti.png" alt="kisti">
                  </div> <!-- header image -->
              </div>
          </div> <!-- row -->
      </div> <!-- container -->
      <div class="header-social">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="header-social-icon">
                          <ul>
                              <%-- <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                              <li><a href="#"><i class="lni-twitter-original"></i></a></li>
                              <li><a href="#"><i class="lni-behance-original"></i></a></li>
                              <li><a href="#"><i class="lni-linkedin-original"></i></a></li> --%>
                          </ul>
                      </div> <!-- header social -->
                  </div>
              </div> <!-- row -->
          </div> <!-- container -->
      </div> <!-- header social -->
  </div> <!-- header content -->
</header>

<!--====== HEADER PART ENDS ======-->

<!--====== ABOUT PART START ======-->

<section id="about" class="about-area pt-125 pb-130">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-12">
              <div class="section-title text-center">
                  <h2 class="title">KISTI CA</h2>
                  <p>KISTI Certification Authority is operated by the Grid Technology Research Team of KISTI</br>
                      The authority satisfies requirements from APGrid PMA <span class="emphasis">Asia Pacific Grid Policy Management Authority</span></br>
                      Certificate issues by the KISTI Grid CA are compatible with the Globus Toolkit middleware.
                  </p>
                  <p style="padding-top:2em">
                      The public key cryptography is the basis of grid security architecture.
                      <br>Certification Authority <span class="emphasis">CA</span> is a mandatory componant of 
                      public key infrastructure <span class="emphasis">PKI</span>.
                  </p>
              </div> <!-- section title -->
          </div>
      </div> <!-- row -->

    <%! String count=""; %>
    <%
    Class.forName("org.mariadb.jdbc.Driver");


    Connection conn=null;
    PreparedStatement stmt=null;
    ResultSet rs=null;    
    String userCnt=null;
    %>
    <%-- try{
        String jdbcDriver ="jdbc:mariadb://localhost:3306/ejbca";
        String dbUser="ejbca";
        String dbPass="ejbca";
        String query="SELECT count(*) FROM UserData WHREE status='40'";

        //2.데이터 베이스 커넥션 생성
    
        conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass); 
        //3.Statement 생성
        stmt = conn.prepareStatement(query);
    } catch(SQLException e) {
        out.print("Connection Error...");
        out.print(e.toString());
    }

    try{
        stmt.setString(1, "userCount");
    } catch(SQLException e) {
        out.print("statement setString Error...");
        out.print(e.toString());
    }

    try{
        //4. 쿼리실행
        rs = stmt.executeQuery();
    } catch(SQLException e) {
        out.print("executeQuery Error...");
        out.print(e.toString());
    }
    
    rs.next();
    try{
        userCnt = rs.getString("userCount");
    } catch(SQLException e) {
        out.print("userCnt Error...");
        out.print(e.toString());
    }

    try{
        count = rs.getString("userCount");
    } catch(SQLException e) {
        out.print("userCnt Error...");
        out.print(e.toString());
    }

    finally {
        if(rs!=null) try{rs.close(); }catch(SQLException ex) {}
        if(stmt!=null) try{stmt.close();} catch(SQLException ex) {}
        if(conn!=null) try{conn.close(); }catch(SQLException ex) {}   
    } --%>

      <div class="row text-justify">
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30">
                  <div class="service-icon">
                      <i class="lni-users"></i>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="#">Enroll</a></h4>
                      <%-- <%= count %> --%>
                      <h2 class="counter-count" data-to="100" data-speed="1500">150 </h2>
                      <p class="count-text">Total</p>
                  </div>
              </div> <!-- single service -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30">
                  <div class="service-icon">
                      <i class="lni-certificate"></i>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="#contact">Certificate</a></h4>
                      <%-- <%= userCnt %> --%>
                      <h2 class="counter-count" data-to="100" data-speed="1500">251</h2>
                      <p>KISTI CA V4</p>
                  </div>
              </div> <!-- single service -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30">
                  <div class="service-icon">
                      <i class="lni-ban"></i>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="#">Revoked</a></h4>
                      <h2 class="counter-count" data-to="100" data-speed="1500">112</h2>
                      <p>KISTI CA V4</p>
                  </div>
              </div> <!-- single service -->
          </div>
      </div> <!-- row -->
      <div class="row">
          <div class="col-lg-6">
              <div class="about-content mt-10">
                  <ul class="clearfix">
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-calendar"></i>
                              </div>
                              <div class="info-text">
                                  <p><span class="main-btn-2">will be added current KISTI CA V4.0</span>
                                      <a class="badge badge-light" data-toggle="modal"
                                          data-target="#">details
                                      </a>
                                      : Apr, 2020 - </p>
                              </div>
                          </div>
                      </li>
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-folder"></i>
                              </div>
                              <div class="info-text">
                                  <p><span class="main-btn-2">CP/CPS </span>
                                      <a class="badge badge-light" data-toggle="modal"
                                          data-target="#">details
                                      </a>
                                  </p>
                              </div>
                          </div>
                      </li>
                  </ul>
              </div>
          </div>
          <div class="col-lg-6">
              <div class="about-content mt-10">
                  <ul class="clearfix">
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-calendar"></i>
                              </div>
                              <div class="info-text">
                                  <p><span class="main-btn-2">KISTI CA v3.0</span>
                                      <a class="badge badge-light" data-toggle="modal"
                                          data-target="#kisticav3">details</a>
                                      : Apr 14, 2017 - Apr 9, 2037 (for 20 years)</p>
                              </div>
                          </div> <!-- single info -->
                      </li>
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-calendar"></i>
                              </div>
                              <div class="info-text">
                                  <p><span>KISTI CA v2.0:</span>
                                      <a class="badge badge-light" data-toggle="modal"
                                          data-target="#kisticav2">details</a>
                                      Jul 12, 2007 - Aug 1, 2017 (for 20 years)</p>
                              </div>
                          </div> <!-- single info -->
                      </li>
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-calendar"></i>
                              </div>
                              <div class="info-text">
                                  <p><span>Production Level:</span>
                                      <a class="badge badge-light" data-toggle="modal"
                                          data-target="#productionLevel">details</a>
                                      Jun 1, 2004 - Nov 2006</p>
                              </div>
                          </div> <!-- single info -->
                      </li>
                      <li>
                          <div class="single-info d-flex align-items-center">
                              <div class="info-icon">
                                  <i class="lni-calendar"></i>
                              </div>
                              <div class="info-text">
                                  <p><span>Experimental version:</span> Mar 14, 2013</p>
                              </div>
                          </div> <!-- single info -->
                      </li>

                  </ul>
              </div>
          </div>

      </div>
      <!-- certificate modals -->
      <!-- KISTI CA V3.0 -->
       <div class="modal fade" id="kisticav3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">KISTI CA v3.0</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group list-group-flush" style="overflow-wrap: break-word;">
                                <li class="list-group-item">
                                    <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>Subject: C=KR,
                                        O=KISTI, CN=KISTI Certification Authority</li>
                                <li class="list-group-item">
                                    <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                    <a href="http://ca.gridcenter.or.kr/certs/cps/KISTI-CA-CPCPS-3.0.pdf"
                                        target="_blank"> Certificate Policy and Certification Practice Statement (for
                                        v3.0)</a></li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Valid From: Apr 14,
                                        2017</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Valid Until: Apr 9,
                                        2037 (for 20 years) </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Key size: 4096
                                        bits</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Download :
                                    <a href="http://ca.gridcenter.or.kr/certs/certificates/kisti-ca-v3.0"
                                        target="_blank"><u>kisti-ca-v3.0</u></a>
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/kisti-ca-v3.crt"
                                        target="_blank">.crt</a>)
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/kisti-ca-v3.txt"
                                        target="_blank">.txt</a>)
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/kisti-ca-v3.signing_policy"
                                        target="_blank"><u>signing_policy</u></a>)
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> SHA256 Fingerprint=<br>CD:D6:F9:D8:39:75:94:29:71:6F:61:07:8E:77:91:A0:61:F7:42:B7:BE:72:CF:A9:CE:7C:E2:60:7F:5A:09:F1
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> SHA1 Fingerprint=<br>06:52:34:EE:81:0A:E5:9C:43:68:54:84:8C:8A:D4:DF:0D:75:A7:45
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Issued Certificates <a
                                            href="http://ca.gridcenter.or.kr/issued_v3/" class="badge badge-light"
                                            target="_blank">list</a></li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> CRL(Certificate
                                        Revocation List): <a
                                            href="http://ca.gridcenter.or.kr/CRL/kisti-ca-v3.crl">http://ca.gridcenter.or.kr/CRL/kisti-ca-v3.crl</a>
                                </li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- KISTI CA V2.0 -->
            <div class="modal fade" id="kisticav2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">KISTI CA v2.0</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group list-group-flush" style="overflow-wrap: break-word;">
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> C=KR, O=KISTI, O=GRID,
                                        CN=KISTI Grid Certificate Authority</li>
                                <li class="list-group-item">
                                    <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                    <a href="http://ca.gridcenter.or.kr/cps/KISTI-CPCPS-2.0.html" target="_blank">
                                        Certificate Policy and Certification Practice Statement (for v2.0)</a></li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Valid From: Jul 12,
                                        2007</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Valid Until: Aug 1,
                                        2017 (for 10 years)</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Key size: 2048
                                        bits</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Download :
                                    <a href="http://ca.gridcenter.or.kr/certs/certificates/722e5071.0"
                                        target="_blank"><u>722e5071.0</u></a>
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/722e5071.crt"
                                        target="_blank">.crt</a>)
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/722e5071.txt"
                                        target="_blank">.txt</a>)
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/722e5071.signing_policy"
                                        target="_blank"><u>signing_policy</u></a>)
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> SHA256 Fingerprint=EA:08:BA:6A:36:C9:F1:0A:B5:2F:BB:67:C7:A4:3D:C9:52:B7:CE:DB
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> SHA1 Fingerprint=06:52:34:EE:81:0A:E5:9C:43:68:54:84:8C:8A:D4:DF:0D:75:A7:45
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Issued Certificates <a
                                            href="http://ca.gridcenter.or.kr/issued/" class="badge badge-light"
                                            target="_blank">list</a></li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> CRL(Certificate
                                        Revocation List): <a
                                            href="http://ca.gridcenter.or.kr/CRL/722e5071.crl">http://ca.gridcenter.or.kr/CRL/722e5071.crl</a>
                                </li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Production Level -->
            <div class="modal fade" id="productionLevel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Production Level CA (June 1, 2004 - Nov.
                                2006)</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group list-group-flush" style="overflow-wrap: break-word;">
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Subject : C=KR,
                                        O=KISTI, CN=KISTI GRID ROOT CA</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Valid until : May 30,
                                        2009 GMT </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Key size: 2048
                                        bits</li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> Download :</span>
                                    <a href="http://ca.gridcenter.or.kr/certs/certificates/47183fda.0"
                                        target="_blank"><u>47183fda.0</u></a>
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/47183fda.txt"
                                        target="_blank">.txt</a>)
                                    (<a href="http://ca.gridcenter.or.kr/certs/certificates/47183fda.signing_policy"
                                        target="_blank"><u>signing_policy</u></a>)
                                </li>
                                <li class="list-group-item"><span class="list-certificate"><i class="fas fa-certificate icon"></i></span> CRL(Certificate
                                        Revocation List): <a
                                            href="http://ca.gridcenter.or.kr/CRL/47183fda.crl">http://ca.gridcenter.or.kr/CRL/47183fda.crl</a>
                                </li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
  </div> <!-- container -->
</section>

<!--====== ABOUT PART ENDS ======-->

<!--====== SERVICES PART START ======-->

<section id="service" class="services-area gray-bg pt-125 pb-25">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-8">
              <div class="section-title text-center pb-30">
                  <h2 class="title">GRID RESOURCES</h2>
                  <p>KISTI CA supports Grid Resource, such as ALICE, CMS, Belle II.</p>
              </div> <!-- section title -->
          </div>
      </div> <!-- row -->
      <div class="row justify-content-center">
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30" style="height:320px;">
                  <div class="service-icon">
                      <img src="assets/images/service/alice.ico" style="width: 3em;" alt="ALICE"></img>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="https://home.cern/science/experiments/alice" target="_blank">ALICE</a></h4>
                      <p>A Large Ion Collider Experiment is a heavy-ion detector on the Large Hadron Collider <span class="emphasis">LHC</span> ring.</p>
                  </div>
              </div> <!-- single service -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30" style="height:320px;">
                  <div class="service-icon">
                      <img src="assets/images/service/cms.ico" style="width: 3em;" alt="CMS"></img>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="http://cms.web.cern.ch/" target="_blank">CMS</a></h4>
                      <p>Compact Muon Solenoid is a particle detector that is designed to see a wide range of particles 
                          and phenomena produced in high-energy collisions in the LHC <span class="emphasis">Large Hadron Collider</span>.</p>
                  </div>
              </div> <!-- single service -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-8">
              <div class="single-service text-center mt-30" style="height:320px;">
                  <div class="service-icon">
                      <img src="assets/images/service/belle2.ico" style="width: 3em;" alt="BELLE2"></img>
                  </div>
                  <div class="service-content">
                      <h4 class="service-title"><a href="https://www.belle2.org/project/super_kekb_and_belle_ii/">BELLE II</a></h4>
                      <p>The Belle experiment precisely analysed the characteristics of pairs of B- and anti-B-mesons and confirmed 
                          the effect of CP-violation.</p>
                  </div>
              </div> <!-- single service -->
          </div>
      </div> 
  </div> <!-- container -->
</section>

<!--====== SERVICES PART ENDS ======-->


<!--====== CALL TO ACTION PART START ======-->

<section id="register" class="call-to-action pt-50 pb-25 bg_cover"
  style="background-image: url(assets/images/banner/gridcomputing3.png)">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-xl-8 col-lg-9">
              <div class="call-action-content text-center">
                  <!-- <h2 class="action-title">Will you be participating in the experiment above?</h2> -->
                  <h2 class="action-title">Do you need grid computing resources?</h2>
                  <p>Please Fill out the form below and contact the Registration Authority (RA) of your experiment community.
                  <i class="lni-envelope" style="padding-right:10px"></i><a class="page-scroll" href="#contact" style="color:#FFF"> Community mail list</a></p>
                  <ul>
                      <li><a class="main-btn custom" href="assets/docs/kisti_ca_user_form_v1.5.pdf" target="_blank"><i class="lni-download icon"></i>  Applicant</a></li>
                      <li><a class="main-btn custom-2" href="assets/docs/Personal_Information_Protection_Act.pdf" target="_blank"><i class="lni-download icon"></i>  Agreement</a></li>
                  </ul>
                  <p style="padding-left:200px"><i class="lni-pin-alt"></i> KOREAN only</p>
              </div> <!-- call action content -->
          </div>
      </div> <!-- row -->
  </div> <!-- container -->
</section>

<!--====== CALL TO ACTION PART ENDS ======-->



<!--====== CERTIFICATE PART START ======-->

<section id="certificates" class="certificate-area gray-bg pt-125 pb-130">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-8">
              <div class="section-title text-center pb-25">
                  <h2 class="title">CERTIFICATES</h2>
                  <p>The public key cryptography is the basis of grid security architecture. </br> Certification Authority(CA) is a mandatory componant of public key infrastructure(PKI).</p>
              </div> <!-- section title -->
          </div>
      </div> <!-- row -->
      <div class="row justify-content-center">
          <div class="col-lg-4 col-md-8 col-sm-9">
              <div class="single-certificate text-center mt-30">
                  <div class="certificate-package">
                      <h4 class="package-title">Enroll</h4>
                  </div>
                  <div class="certificate-body">
                      <div class="certificate-text">
                          <p>Create certificate or keystore</p>
                      </div>
                      <div class="certificate-list">
                          <ul class="text-left" style="margin-left: 2.8rem; height:140px;">
                              <li>Create Browser Certificate</li>
                              <li>Create Certificate from CSR</li>
                              <li>Create Keystore</li>
                          </ul>
                      </div>
                      <div class="certificate-btn">
                          <a class="main-btn" href="#enroll-cert" data-toggle="modal" data-target="#enroll-cert"><i class="lni-enter icon"></i>get certificate</a>
                      </div>
                  </div>
              </div> <!-- single certificate -->
          </div>
          <div class="col-lg-4 col-md-8 col-sm-9">
              <div class="single-certificate active text-center mt-30">
                  <div class="certificate-package">
                      <h4 class="package-title">Retrieve</h4>
                  </div>
                  <div class="certificate-body">
                      <div class="certificate-text">
                          <p>Fetch CA/User certificates</p>
                      </div>
                      <div class="certificate-list">
                          <ul class="text-left" style="margin-left: 2.8rem; height:140px;">
                              <li>Fetch CA Certificate</li>
                              <li>Fetch CA CRLs</li>
                              <li>List User's Certificates</li>
                              <li>Fetch User's Latest Certificate</li>
                          </ul>
                      </div>
                      <div class="certificate-btn">
                          <a class="main-btn" href="#retrieve-cert" data-toggle="modal" data-target="#retrieve-cert"><i class="lni-enter icon"></i>fetch certificate</a>
                      </div>
                  </div>
              </div> <!-- single certificate -->
          </div>
          <div class="col-lg-4 col-md-8 col-sm-9">
              <div class="single-certificate text-center mt-30">
                  <div class="certificate-package">
                      <h4 class="package-title">Inspect</h4>
                  </div>
                  <div class="certificate-body">
                      <div class="certificate-text">
                          <p>Inspect Certificate/CSR</p>
                          <!-- <span class="price">$29.00</span> -->
                      </div>
                      <div class="certificate-list">
                          <ul class="text-left" style="margin-left: 2.8rem; height:140px;">
                              <li>Inspect Certificate/CSR</li>
                              <li>Check Certificate Status</li>
                          </ul>
                      </div>
                      <div class="certificate-btn">
                          <a class="main-btn" href="#inspect-cert" data-toggle="modal" data-target="#inspect-cert"><i class="lni-enter icon"></i>inspect certificate</a>
                      </div>
                  </div>
              </div> <!-- single certificate -->
          </div>
      </div> <!-- row -->

      <!-- Modal : Enroll Certificate  -->
      <div class="modal fade" id="enroll-cert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Create Certificate </h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="enrol/browser.jsp" role="button"><h6 class="title">Create Browser Certificate</h6></a>
                                <p class="pt-10">Install a certificate in your web browser. This certificate may be exportable depending on browser and browser settings.</span></li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="enrol/server.jsp" role="button"><h6 class="title">Create Certificate from CSR</h6></a>
                                <p class="pt-10">Send a PKCS#10 certificate request generated by your server, and receive a certificate that can be installed on the server. Consult your server documentation.</span>
                            </li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="enrol/keystore.jsp" role="button"><h6 class="title">Create Keystore</h6></a>
                                <p class="pt-10">Create a server generated keystore in PEM, PKCS#12 or JKS format and save to your disc. This keystore can be installed in a server, browser or in other applications.</span>
                            </li>
                        </ul>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
              </div>
          </div>
      </div> <!-- Modal End: Enroll Certificate -->

      <!-- Retrieve Certificate -->
      <div class="modal fade" id="retrieve-cert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Fetch CA/User Certificate </h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="retrieve/ca_certs.jsp" role="button"><h6 class="title">Fetch CA Certificate</h6></a>
                                <p class="pt-10">Browse and download CA certificates.</span></li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="retrieve/list_crls.jsp" role="button"><h6 class="title">Fetch CA CRLs</h6></a>
                                <p class="pt-10">Download Certificate Revocation Lists.</span>
                            </li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="retrieve/list_certs.hsp" role="button"><h6 class="title">List User's Certificates</h6></a>
                                <p class="pt-10">Browse and download a certificate for whom you know the certificate Distinguished Name.</span>
                            </li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="retrieve/latest_cert.jsp" role="button"><h6 class="title">Fetch User's Latest Certificate</h6></a>
                                <p class="pt-10">Download the last issued certificate for a user for whom you know the certificate Distinguished Name.</span>
                            </li>
                        </ul>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
              </div>
          </div>
      </div> <!-- Modal End: Retrieve Certificate -->

      <!-- Inspect Certificate -->
      <div class="modal fade" id="inspect-cert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Inspect Certificate/CSR </h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="inspect/request.jsp" role="button"><h6 class="title">Inspect Certificate/CSR</h6></a>
                                <p class="pt-10">Inspect a dump of a CSR or a certificate. This gives an output of a CVC or ASN.1 dump, suitable for technical inspection and debugging.</span></li>
                            <li class="list-group-item">
                                <span class="list-certificate"><i class="fas fa-certificate icon"></i></span>
                                <a href="retrieve/check_status.jsp" role="button"><h6 class="title">Check Certificate Status</h6></a>
                                <p class="pt-10">Check revocation status for a certificate where you know the Issuer Distinguished Name and the serial number.</span>
                            </li>
                        </ul>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
              </div>
          </div>
      </div> <!-- Modal End: Retrieve Certificate -->
  </div> <!-- container -->
</section>

<!--====== CERTIFICATE PART ENDS ======-->

<!--====== CONTACT PART START ======-->

<section id="contact" class="contact-area pt-125 pb-130 white-bg">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-8">
              <div class="section-title text-center pb-25">
                  <h2 class="title">Get In Touch</h2>
                  <p>Pleas Contact to RA <span class="emphasis">Registration Authority</span> at your community or university to enroll and
                      issue certificate.</p>
              </div> <!-- section title -->
          </div>
      </div> <!-- row -->
      <div class="row justify-content-center">
          <div class="col-lg-4 col-md-6 col-sm-7">
              <div class="contact-box text-center mt-30">
                  <div class="contact-icon">
                      <i class="lni-map-marker"></i>
                  </div>
                  <div class="contact-content">
                      <h6 class="contact-title">Address</h6>
                      <p>245, Daehak-ro, Yuseong-gu, Daejeon, Republic of Korea</p>
                  </div>
              </div> <!-- contact box -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-7">
              <div class="contact-box text-center mt-30">
                  <div class="contact-icon">
                      <i class="lni-phone"></i>
                  </div>
                  <div class="contact-content">
                      <h6 class="contact-title">Phone</h6>
                      <p>+82 42-869-0663</p>
                      <p>text</p>

                  </div>
              </div> <!-- contact box -->
          </div>
          <div class="col-lg-4 col-md-6 col-sm-7">
              <div class="contact-box text-center mt-30">
                  <div class="contact-icon">
                      <i class="lni-envelope"></i>
                  </div>
                  <div class="contact-content">
                      <h6 class="contact-title">Email</h6>
                      <p>kisti-grid-ca@kisti.re.kr</p>
                      <p>CA/RA mailing list at here</p>
                  </div>
              </div> <!-- contact box -->
          </div>
      </div> <!-- row -->
      <div class="row">
           <div class="col-lg-6">
                <div class="contact-box mt-60">
                    <div class="contact-icon">
                        <i class="lni-users"></i>
                    </div>
                    <div class="contact-content">
                        <h6 class="contact-title">RA mailing list</h6>
                        <ul>
                            <li><span class="emphasis-mid">KISTI RA mailing list</span>: kisti-grid-ra@kisti.re.kr</li>
                            <li><span class="emphasis-mid">GSDC ALICE Support</span>: Sang-Un Ahn (sahn@kisti.re.kr) </li>
                            <li><span class="emphasis-mid">GSDC CMS Support</span>: Geonmo Ryu (geonmo@kisti.re.kr) </li>
                            <li><span class="emphasis-mid">GSDC LIGO Support</span>: Sangwook Bae (wookie@kisti.re.kr) </li>
                            <li><span class="emphasis-mid">GSDC Belle II Support</span>: Ilyeon Yeo (ilyeon9@kisti.re.kr) </li>
                        </ul>
                    </div>
                </div> <!-- contact form -->
            </div>
            <div class="col-lg-6">
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== CONTACT PART ENDS ======-->

<%@ include file="footer.inc" %>