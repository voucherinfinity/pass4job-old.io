<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Pass4Job.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
            color: darkseagreen !important;
            background: #c8c8c8;
            font: 600 16px/18px 'Open Sans',sans-serif;
        }

        *, :after, :before {
            box-sizing: border-box
        }

        .clearfix:after, .clearfix:before {
            content: '';
            display: table
        }

        .clearfix:after {
            clear: both;
            display: block
        }

        a {
            color: inherit;
            text-decoration: none
        }

        .login-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 556px;
            position: relative;
            // background: url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
            box-shadow: 0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
        }

        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 31px 42px 42px 37px;
           background: transparent;
           box-shadow: 0px 2px 20px 20px #888888;

        }

            .login-html .sign-in-htm,
            .login-html .sign-up-htm {
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                position: absolute;
                transform: rotateY(180deg);
                backface-visibility: hidden;
                transition: all .4s linear;
            }

            .login-html .sign-in,
            .login-html .sign-up,
            .login-form .group .check {
                display: none;
            }

            .login-html .tab,
            .login-form .group .label,
            .login-form .group .button {
                text-transform: uppercase;
            }

            .login-html .tab {
                font-size: 22px;
                margin-right: 15px;
                padding-bottom: 5px;
                margin: 0 15px 10px 0;
                display: inline-block;
                border-bottom: 2px solid transparent;
            }

            .login-html .sign-in:checked + .tab,
            .login-html .sign-up:checked + .tab {
                color: #fff;
                border-color: #1161ee;
            }

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

            .login-form .group {
                margin-bottom: 15px;
            }

                .login-form .group .label,
                .login-form .group .input,
                .login-form .group .button {
                    width: 100%;
                    color: #fff;
                    display: block;
                }

                .login-form .group .input,
                .login-form .group .button {
                    border: none;
                    padding: 15px 20px;
                    border-radius: 25px;
                    background: rgba(255,255,255,.1);
                }

                .login-form .group input[data-type="password"] {
                    text-security: circle;
                    -webkit-text-security: circle;
                }

                .login-form .group .label {
                    color: #aaa;
                    font-size: 12px;
                }

                .login-form .group .button {
                    background: darkgrey;
                }

                .login-form .group label .icon {
                    width: 15px;
                    height: 15px;
                    border-radius: 2px;
                    position: relative;
                    display: inline-block;
                    background: rgba(255,255,255,.1);
                }

                    .login-form .group label .icon:before,
                    .login-form .group label .icon:after {
                        content: '';
                        width: 10px;
                        height: 2px;
                        background: #fff;
                        position: absolute;
                        transition: all .2s ease-in-out 0s;
                    }

                    .login-form .group label .icon:before {
                        left: 3px;
                        width: 5px;
                        bottom: 6px;
                        transform: scale(0) rotate(0);
                    }

                    .login-form .group label .icon:after {
                        top: 6px;
                        right: 0;
                        transform: scale(0) rotate(0);
                    }

                .login-form .group .check:checked + label {
                    color: #fff;
                }

                    .login-form .group .check:checked + label .icon {
                        background: #1161ee;
                    }

                        .login-form .group .check:checked + label .icon:before {
                            transform: scale(1) rotate(45deg);
                        }

                        .login-form .group .check:checked + label .icon:after {
                            transform: scale(1) rotate(-45deg);
                        }

        .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm {
            transform: rotate(0);
        }

        .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
            transform: rotate(0);
        }

        .hr {
            height: 2px;
            margin: 60px 0 50px 0;
            background: rgba(255,255,255,.2);
        }

        .foot-lnk {
            text-align: center;
        }
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 265px;
            top: 0;
            width: 650px; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            text-align: center;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .aboutpage {
            color: white;
        }

        #contact {
            padding: 2%;
        }
    </style>
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Sign In/Sign Up</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>
    <section class="contact-us" id="contact">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Sign In/Sign Up</li>
            </ol>
            <div id="myModal" class="modal">

                <!-- Modal content -->
                <div class="modal-content" style="width: 27%; height: 300px;">
                    <span class="close">&times;</span>
                    <h6>Forgot Password</h6>
                    <br />
                    <div class="login-form">
                        <div class="sign-in-htm">
                            <div id="dvRecoverMessage" runat="server" style="display: none; color: green;" clientidmode="Static">
                                <center>New Password has been sent to your email id.</center>
                            </div>
                            <div id="dvRecoverError" runat="server" style="display: none; color: red;" clientidmode="Static">
                                <center> The Email you entered not exists.</center>
                            </div>
                            <div class="group">
                                <asp:TextBox ID="txtRecoverEmailId" runat="server" foreColor="Black" placeholder="Email Address" CssClass="input" BorderStyle="groove" spellcheck="false" class="form-control validate" MaxLength="100" ClientIDMode="Static" autocomplete="off" />
                                <span class="errorRecoverEmailId" style="color: red"></span>
                            </div>
                            <div class="group">
                                <button id="Recover" type="button" class="button" style="margin: 0px auto; display: flex; color: #fff; justify-content: center; outline: none; position: relative" onclick="RecoverEmailId();">
                                    Verify Email
                                </button>
                           <center> <div id="RecoverLoding" class="button" style="display: none; width: 144px;"><i class="fa fa-circle-o-notch fa-spin"></i>Loading..</div></center>    

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="login-wrap">
                <div class="login-html">
                    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" style="cursor: pointer;">Sign In</label>
                    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab" style="cursor: pointer;">Sign Up</label>
                    <div class="login-form">
                        <div class="sign-in-htm">
                            <br />
                            <div class="group">
                                <label for="user" class="label">Email ID</label>&nbsp;
                                <asp:TextBox ID="txtEmailId" runat="server" autocomplete="off" MaxLength="100" CssClass="input" placeholder="Email ID" spellcheck="false" ClientIDMode="Static" />
                                <span class="errorEmailId" style="color: red"></span>
                            </div>
                            <br />
                            <div class="group">
                                <label for="pass" class="label">Password</label>&nbsp;
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" MaxLength="15" CssClass="input" placeholder="Password" autocomplete="off" ClientIDMode="Static" />
                            </div>
                            <br />
                            <%--   <div class="group">
                                <input id="check" type="checkbox" class="check" checked>
                                <label for="check"><span class="icon"></span>Keep me Signed in</label>
                            </div>--%>
                            <br />
                            <div class="group">
                                <%--  <input type="submit" class="button" value="Sign In">--%>
                                <input id="btnLogin" type="button" onclick="btnLoginClick();" value="Login" class="button" />
                                <div id="LoginLoding" class="button" style="display: none; text-align: center;">
                                    <i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..
                                </div>
                            </div>
                            <div id="dvMessage" style="display: none; color: red">
                                <span id="message"></span>
                            </div>
                            <div class="foot-lnk">
                                <a id="myBtn"  style="cursor:pointer;">Forgot Password?</a>
                            </div>
                        </div>
                        <div class="sign-up-htm" id="Registration">
                         
                            <div class="group">
                                <label for="user" class="label">First Name</label>
                                <asp:TextBox ID="txtFName" runat="server" spellcheck="false" CssClass="input" placeholder="First Name" autocomplete="off" MaxLength="15" ClientIDMode="Static" />
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Last Name</label>
                                <asp:TextBox ID="txtLName" runat="server" spellcheck="false" CssClass="input" placeholder="Last Name" autocomplete="off" MaxLength="15" ClientIDMode="Static" />
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Email ID</label>
                                <asp:TextBox ID="txtRegistrationEmailId" runat="server" spellcheck="false" CssClass="input" placeholder="Email ID" autocomplete="off" MaxLength="100" ClientIDMode="Static" />
                                <span class="errorRegistrationEmailId" style="color: red"></span>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Password</label>
                                <asp:TextBox ID="txtRegistrationPassword" runat="server" placeholder="Password" CssClass="input" MaxLength="15" TextMode="Password" ClientIDMode="Static" />
                            </div>
                            <div class="group">
                                <input id="Register" type="button" class="button" onclick="btnRegister();" value="Sign up" />
                                <div id="RegisterLoding" style="display: none;" class="button">
                                    <center><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</center>
                                </div>
                                   <div id="dvMessage2" style="display: none; color: red">
                                <center><span id="message2"></span></center>
                            </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            // Get the modal
            var modal = document.getElementById("myModal");

            // Get the button that opens the modal
            var btn = document.getElementById("myBtn");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks the button, open the modal 
            btn.onclick = function () {
                modal.style.display = "block";
            }

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
        <script>
            function btnLoginClick() {
                var emailId = document.getElementById("txtEmailId").value;
                var password = document.getElementById("txtPassword").value;
                if (emailId == "" && password == "") {
                    $("#txtEmailId").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    $("#txtPassword").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    return true;
                }
                if (emailId == "") {
                    $("#txtEmailId").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    return true;
                }
                var Email = $("#txtEmailId").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $('.errorEmailId').text('Invalid Email Id.');
                        return false;
                    } else { $('.errorEmailId').text(''); }
                }
                if (password == "") {
                    $("#txtPassword").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    return true;
                }
                $("#btnLogin").css("display", "none");
                $("#LoginLoding").css("display", "block");
                $.ajax({
                    url: "../login.aspx/ValidateCandidate",
                    type: "POST",
                    data: '{email:"' + emailId + '", password:"' + password + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        var IsValidUser = data.d;
                        if (IsValidUser) {
                            window.location.href = 'https://pass4job.com/pte-exam';
                        } else {
                            $("#dvMessage").css("display", "block");
                            $('#message').text('Incorrect Username or Password');
                            $("#btnLogin").css("display", "block");
                            $("#LoginLoding").css("display", "none");
                            $('#txtPassword').val('');
                        }
                    },
                    error: function () {
                        alert('Somthing Wrong !');
                    }
                });
            }
        </script>
        <script>
            function btnRegister() {
                var isValid = true;
                $('#Registration input[type="text"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    }
                    else {
                        $(this).css({ "border": "", "box-shadow": "" });
                    }
                });
                $('#Registration input[type="password"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                        $("#txtMiddleName").css({ "border": "", "box-shadow": "" });
                    }
                    else {
                        $(this).css({ "border": "", "box-shadow": "" });
                    }
                });
                var Email = $("#txtRegistrationEmailId").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $('.errorRegistrationEmailId').text('Invalid Email Id');
                        return false;
                    } else { $('.errorRegistrationEmailId').text(''); }
                }
                if (isValid == false) {
                    // e.pre
                }
                else {
                    var user = {};
                    user.Name = $("#txtRegistrationName").val();
                    user.FName = $("#txtFName").val();
                    user.LName = $("#txtLName").val();
                    user.EmailId = $("#txtRegistrationEmailId").val();
                    user.Password = $("#txtRegistrationPassword").val();
                    $("#Register").css("display", "none");
                    $("#RegisterLoding").css("display", "block");
                    $.ajax({
                        type: "POST",
                        url: "../login.aspx/SaveUser",
                        data: '{user: ' + JSON.stringify(user) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var userId = response.d;
                            if (userId == -2) {
                                $("#Register").css("display", "block");
                                $("#RegisterLoding").css("display", "none");
                                $("#dvMessage2").css("display", "block");
                                $('#message2').text('This Email Id is already exist');
                            }
                            else {
                                window.location.href = 'https://pass4job.com/pte-exam';
                            }
                        }
                    });
                }
            }
        </script>
        <script>
            function RecoverEmailId() {
                var emailId = document.getElementById("txtRecoverEmailId").value;
                if (emailId == "") {
                    $("#txtRecoverEmailId").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    return true;
                }
                else {
                    $("#txtRecoverEmailId").css({ "border": "", "box-shadow": "" });
                }
                var Email = $("#txtRecoverEmailId").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $('.errorRecoverEmailId').text('Invalid Email Id.');
                        return false;
                    } else { $('.errorRecoverEmailId').text(''); }
                }
                $("#Recover").css("display", "none");
                $("#RecoverLoding").css("display", "block");
                $.ajax({
                    type: "POST",
                    url: "../login.aspx/RecoverEmail",
                    data: '{EmailId: "' + $("#<%=txtRecoverEmailId.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert("something wrong.")
                }
            });
            }
            function OnSuccess(response) {
                var IsValidCandidate = response.d;
                if (IsValidCandidate == false) {
                    $("#dvRecoverError").css("display", "block");
                    $("#Recover").css("display", "block");
                    $("#dvRecoverError").fadeOut(6000);
                    $("#RecoverLoding").css("display", "none");
                    $("#txtRecoverEmailId").val('');
                } else {
                    $("#Recover").css("display", "block");
                    $("#RecoverLoding").css("display", "none");
                    $("#dvRecoverError").css("display", "none");
                    $("#dvRecoverMessage").css("display", "block");
                    $("#dvRecoverMessage").fadeOut(6000);
                    $("#txtRecoverEmailId").val('');
                }
            }
        </script>
    </section>
</asp:Content>
