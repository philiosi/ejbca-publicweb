<section id="service" class="service-area gray-bg pt-125 pb-25">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pb-30">
                    <h2>KISTI CA CERTIFICATE ENROLLMENT </h2>
                    <p>Please enter your username and
                    <c:choose>
                        <c:when test="${PASSWORD_TERMINOLOGY == 'enrollment_code'}">enrollment code. (check your email)</c:when>
                        <c:otherwise>password.</c:otherwise>
                    </c:choose>
                    Then click OK to generate your token.</p>
                </div> <!-- section title END -->
            </div>
        </div>  <!-- row End -->
    </div>
    <div class="row justify-content-center">

        <div class="card">
			<div class="card-header">
				<h3>Authentication</h3>
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                        <label for="${TEXTFIELD_USERNAME}"></label>
                        <input type="text" class="form-control" placeholder="username" name="${TEXTFIELD_USERNAME}" id="${TEXTFIELD_USERNAME}" accesskey="u" />	
					</div>
					<div class="input-group form-group">
                        <c:choose>
                            <c:when test="${PASSWORD_TERMINOLOGY == 'enrollment_code'}">
                                <label for="password" title="Please enter your one-time authentication code."></label>
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" placeholder="Enrollment Code" autocomplete="off" name="${TEXTFIELD_PASSWORD}" id="${TEXTFIELD_PASSWORD}" accesskey="p" />
                            </c:when>
                            <c:otherwise>
                                <label for="${TEXTFIELD_PASSWORD}"></label>
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" placeholder="Password" autocomplete="off" name="${TEXTFIELD_PASSWORD}" id="${TEXTFIELD_PASSWORD}" accesskey="p" />
                            </c:otherwise>
                        </c:choose>
						<input type="password" class="form-control" placeholder="password" autocomplete="off" name="${TEXTFIELD_PASSWORD}" id="${TEXTFIELD_PASSWORD}" accesskey="p" />
					</div>
					<div class="form-group">
                        <label for="${BUTTON_SUBMIT_USERNAME}"></label>
						<input type="submit" value="OK" class="btn float-right login_btn" name="${BUTTON_SUBMIT_USERNAME}" id="${BUTTON_SUBMIT_USERNAME}">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't register?<a href="../index.jsp#registeration">Sign Up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
        </div>
        
    </div>
</section>