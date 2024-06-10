﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fail.aspx.cs" Inherits="Pass4Job.fail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>fail</title>

    <!-- All Plugins Css -->
    <link href="assets/css/plugins.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/styles.css" rel="stylesheet">


    <style>
        @import url('https://fonts.googleapis.com/css2?family=Khand:wght@500&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .body2 {
            height: 70vh;
            display: flex;
            font-size: 14px;
            text-align: center;
            justify-content: center;
            align-items: center;
            font-family: 'Khand', sans-serif;
        }

        .wrapperAlert {
            width: 500px;
            height: 450px;
            overflow: hidden;
            border-radius: 12px;
            border: thin solid #ddd;
        }

        .topHalf {
            width: 100%;
            color: white;
            overflow: hidden;
            min-height: 250px;
            position: relative;
            padding: 40px 0;
            background: brown;
        }

            .topHalf p {
                margin-bottom: 30px;
            }

        svg {
            fill: white;
        }

        .topHalf h1 {
            font-size: 2.25rem;
            display: block;
            font-weight: 500;
            letter-spacing: 0.15rem;
            text-shadow: 0 2px rgba(128, 128, 128, 0.6);
        }


        .bg-bubbles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        li {
            position: absolute;
            list-style: none;
            display: block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.15); /* fade(green, 75%);*/
            bottom: -160px;
            -webkit-animation: square 20s infinite;
            animation: square 20s infinite;
            -webkit-transition-timing-function: linear;
            transition-timing-function: linear;
        }

            li:nth-child(1) {
                left: 10%;
            }

            li:nth-child(2) {
                left: 20%;
                width: 80px;
                height: 80px;
                animation-delay: 2s;
                animation-duration: 17s;
            }

            li:nth-child(3) {
                left: 25%;
                animation-delay: 4s;
            }

            li:nth-child(4) {
                left: 40%;
                width: 60px;
                height: 60px;
                animation-duration: 22s;
                background-color: rgba(white, 0.3); /* fade(white, 25%); */
            }

            li:nth-child(5) {
                left: 70%;
            }

            li:nth-child(6) {
                left: 80%;
                width: 120px;
                height: 120px;
                animation-delay: 3s;
                background-color: rgba(white, 0.2); /* fade(white, 20%); */
            }

            li:nth-child(7) {
                left: 32%;
                width: 160px;
                height: 160px;
                animation-delay: 7s;
            }

            li:nth-child(8) {
                left: 55%;
                width: 20px;
                height: 20px;
                animation-delay: 15s;
                animation-duration: 40s;
            }

            li:nth-child(9) {
                left: 25%;
                width: 10px;
                height: 10px;
                animation-delay: 2s;
                animation-duration: 40s;
                background-color: rgba(white, 0.3); /*fade(white, 30%);*/
            }

            li:nth-child(10) {
                left: 90%;
                width: 160px;
                height: 160px;
                animation-delay: 11s;
            }

        @-webkit-keyframes square {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-500px) rotate(600deg);
            }
        }

        @keyframes square {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-500px) rotate(600deg);
            }
        }

        .bottomHalf {
            align-items: center;
            padding: 35px;
        }

            .bottomHalf p {
                font-weight: 500;
                font-size: 1.05rem;
                margin-bottom: 20px;
            }

        button {
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 12px;
            padding: 10px 18px;
            background-color: brown;
            text-shadow: 0 1px rgba(128, 128, 128, 0.75);
        }

            button:hover {
                background-color: brown;
            }
    </style>

    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
        $(document).ready(function () {
            disableBackButton();
        });
    </script>
</head>

<body>

    <div id="main-wrapper">



        <!-- ============================ Hero Banner End ================================== -->
        <!-- ============================ Who We Are Start ================================== -->
        <section>
            <div class="container body2">
                <div class="wrapperAlert">

                    <div class="contentAlert">

                        <div class="topHalf">

                            <p>
                                <img src="https://pass4job.com/images/fail.png" alt="Virasat" width="120px" height="120px">
                            </p>
                            <h1>Your Payment Failed!</h1>


                        </div>

                        <div class="bottomHalf">

                            <%--<p>If you didn't get voucher code with in the given /limited time period, please contact us.</p>--%>
                            <a href="pte-exam" class="go-home">
                                <button id="alertMO">Please try again</button>
                        </div>

                    </div>

                </div>
            </div>
        </section>
        <div class="clearfix"></div>
        <!-- ============================ Who We Are End ================================== -->
        <!-- ============================ Footer Start ================================== -->

    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>


    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->

</body>

</html>
