 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
 <%@ include file="header.jsp" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem,java.util.List,java.util.Iterator,java.io.InputStream,org.cesecore.util.FileTools,
org.apache.commons.fileupload.disk.DiskFileItemFactory"%>

<jsp:useBean id="dump" class="org.ejbca.ui.web.pub.inspect.CertAndRequestDumpBean" scope="page" />
         
  <%
// Check that we have a file upload request
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (isMultipart) {
  final DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
  diskFileItemFactory.setSizeThreshold(9999);
  ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
  upload.setSizeMax(10000);
  List<FileItem> items = upload.parseRequest(request);
  for(FileItem item : items) {
    if (!item.isFormField()) {
      InputStream is = item.getInputStream();
      byte[] bytes = FileTools.readInputStreamtoBuffer(is);
      dump.setBytes(bytes);
    }
  }
}
  %>

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
                                <li class="nav-item pt-10 pb-10 pl-30 pr-12"><a href="../inpect/request.jsp" class="nav-alink-b nav-sub">Inspect Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="../retrieve/request.jsp" class="nav-alink">Inspect certificate/CSR</a></li>
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

            <h1 class="title"><c:out value="Certificate/CSR dump" /></h1>
            <hr/>
            <p>File is of type: <c:out value="${dump.type}"/></p>
<pre>
<c:out value="${dump.dump}"></c:out>    
</pre>            
 <%@ include file="footer.inc" %>
