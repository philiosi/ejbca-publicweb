<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="THIS_TITLE" value="Certificate Enrollment from CSR" />
<%@ include file="header.jsp" %>

<section id="certificate" class="service-area gray-bg pt-125 pb-25">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-left pb-30">
                        <h2 class="title">CERTIFICATE ENROLLMENT FROM A CSR</h2>
                        <p>Please give your username and enrollment code, select a PEM- or DER-formated certification request file (CSR) for upload, 
                        or paste a PEM-formated request into the field below and click OK to fetch your certificate. </p>
    
                        <p>A PEM-formatted request is a BASE64 encoded certificate request <br />
                            starting with <code class="emphasis-mid"><b>-----BEGIN CERTIFICATE REQUEST-----</code></b><br />
                            and ending with <code class="emphasis-mid"><b>-----END CERTIFICATE REQUEST-----</code></b></p>
                    </div>
                </div>
            </div> <!-- row END -->
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-11 col-sm-12 ml-55 mr-55">        
                    <div class="card text-center mt-30">
                        <div class="card-header "> 
                            <h3 class="title"> Enroll </h3>
                        </div> <!-- card-header END -->
                        <div class="card-body">
                            <form name="EJBCA" action="../certreq" method="post" enctype="multipart/form-data">
                        
                                <input type="hidden" name="hidemenu" value="<c:out value='${hidemenu}' />" />
                                <input type="hidden" name="showResultPage" value="true" />
                                
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <label for="user"></label>
                                    <input type="text" class="form-control" placeholder="username" name="user" id="user" accesskey="u" />
                                </div>
    
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <label for="password" title="Please enter your one-time authentication code. This is NOT the same as the certificate passphrase."></label>
                                    <input type="password" autocomplete="off" class="form-control" placeholder="Enrollment Code" name="password" id="password" accesskey="p" />
                                </div>
    
                                <p class="emphasis-mid text-left">Upload CSR file</p>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-upload icon"></i><label for="pkcs10file"></label></span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" name="pkcs10file" id="pkcs10file"></input>
                                        <label class="custom-file-label" for="inputGroupFile01">Certificate Signing Request (CSR) file</label>
                                    </div>
                                </div>
                                <p class="emphasis-mid text-left">or copy and paste your CSR block below:</p>
                                <div class="input-group">
                                    <textarea class="form-control" rows="15" cols="66" name="pkcs10req" id="pkcs10req" aria-label="With textarea"
                                    placeholder="-----BEGIN CERTIFICATE REQUEST-----

-----END CERTIFICATE REQUEST-----"></textarea>
                                </div>
    
                                <br />
                                <br />
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label for="resulttype" class="input-group-text mr-10"><i class="lni-certificate icon"></i>Result type</label>
                                    </div>
                                    <select class="custom-select" name="resulttype" id="resulttype">
                                        <option value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_CERTIFICATE.getNumber()%>">PEM  - certificate only</option> 
                                        <option selected="selected" value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_CERTIFICATE_CHAIN.getNumber()%>">PEM  - full certificate chain</option> 
                                        <option value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_PKCS7.getNumber()%>">PKCS#7 certificate</option>
                                        <option value="<%=org.ejbca.ui.web.CertificateResponseType.BINARY_CERTIFICATE.getNumber()%>">Binary certificate</option>
                                    </select>
                                </div>
                                
                                <br />
                                <label for="ok"></label>
                                <input class="main-btn" type="submit" id="ok" value="OK" /></input>
                            </form>
                        </div>
                    </div>
                </div>
            </div> <!-- row END -->
        </div>
    </section>

<%@ include file="footer.inc" %>
