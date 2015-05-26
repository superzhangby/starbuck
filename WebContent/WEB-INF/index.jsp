<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
        <title>Privacy Notice Interactive Form Builder</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />

        <script type="text/javascript" src="assets/js/additional.js"></script>
    </head>

<body>

    <!-- Header -->
        <div id="header">

            <div class="top">

                <!-- Logo -->
                    <div id="logo">
                        <span class="image avatar48"><img src="images/avatar.jpg" alt="" /></span>
                        <h1 id="title">Interactive Form Builder</h1>
                        <p>Team 3 Echo</p>
                    </div>

                <!-- Nav -->
                    <nav id="nav">
                        <!--
                            Prologue's nav expects links in one of two formats:

                            1. Hash link (scrolls to a different section within the page)

                               <li><a href="#foobar" id="foobar-link" class="icon fa-whatever-icon-you-want skel-layers-ignoreHref"><span class="label">Foobar</span></a></li>

                            2. Standard link (sends the user to another page/site)

                               <li><a href="http://foobar.tld" id="foobar-link" class="icon fa-whatever-icon-you-want"><span class="label">Foobar</span></a></li>
                        -->
                        <ul>
                            <li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Home</span></a></li>
                            <li><a href="read.do" id="upload-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Upload Existing File</span></a></li>
                            <li><a href="save.do" id="new-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Start New Form</span></a></li>
                        </ul>
                    </nav>

            </div>

            <div class="bottom">

                <!-- Social Icons -->
                    <ul class="icons">
                        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
                        <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
                        <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                    </ul>

            </div>

        </div>

    <!-- Main -->
        <div id="main">

        <!-- Intro -->
            <section id="top" class="one dark cover">
                <div class="container">

                    <header>
                        <h2 class="alt">Welcome to the Interactive Form Builder <br>for <a href="#">Privacy Policy Notice</a><br/>
                    </header>

                    <footer>
                        <a href="read.do" id="upload" class="button scrolly">Upload Existing File</a>
                        <a href="save.do" id="start" class="button scrolly">Start New Form</a>
                    </footer>

                </div>
            </section>

        </div>

    <!-- Footer -->
        <div id="footer">

            <!-- Copyright -->
                <ul class="copyright">
                    <li>&copy; Interactive Form Builder. All rights reserved.</li>
                    <li>Design: <a href="#">Team3 Echo</a></li>
                </ul>

        </div>

    <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.scrollzer.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>


    
</body>

</html>
