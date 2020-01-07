<!--====== FOOTER PART START ======-->

<footer id="footer" class="footer-area">
    <div class="footer-widget pt-130 pb-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="footer-content text-center">
                        <a href="../index.html">
                            <img src="../assets/images/logo-2.png" alt="Logo">
                        </a>
                        <p class="mt-">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor inci- didunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                            nostrud exe- rcitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <ul>
                            <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                            <li><a href="#"><i class="lni-twitter-original"></i></a></li>
                            <li><a href="#"><i class="lni-pinterest"></i></a></li>
                            <li><a href="#"><i class="lni-linkedin-original"></i></a></li>
                        </ul>
                    </div> <!-- footer content -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- footer widget -->
    <div class="footer-copyright pb-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright-text text-center pt-20">
                        <p>Copyright © 2020. KISTI CA </p>
                    </div> <!-- copyright text -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- footer widget -->
</footer>

<!--====== FOOTER PART ENDS ======-->

<!--====== BACK TOP TOP PART START ======-->

<a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>

<!--====== BACK TOP TOP PART ENDS ======-->


<!--====== jquery js ======-->
<script src="../assets/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>

<!--====== Bootstrap js ======-->
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/popper.min.js"></script>

<!--====== Magnific Popup js ======-->
<script src="../assets/js/jquery.magnific-popup.min.js"></script>

<!--====== Parallax js ======-->
<script src="../assets/js/parallax.min.js"></script>

<!--====== Counter Up js ======-->
<script src="../assets/js/waypoints.min.js"></script>
<script src="../assets/js/jquery.counterup.min.js"></script>


<!--====== Appear js ======-->
<script src="../assets/js/jquery.appear.min.js"></script>

<!--====== Scrolling js ======-->
<script src="../assets/js/scrolling-nav.js"></script>
<script src="../assets/js/jquery.easing.min.js"></script>


<!--====== Main js ======-->
<script src="../assets/js/main.js"></script>

<script>

    $(document).on('scroll', function () {
        $('.counter-count').each(function () {
            $(this).prop('Counter', 0).animate({
                Counter: $(this).text()
            }, {
                duration: 5000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
        });
        $('.counter-count').removeClass('counter-count').addClass('counted')

    });



</script>

</body>

</html>