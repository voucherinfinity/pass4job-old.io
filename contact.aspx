<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Pass4Job.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <h2>Contact Us</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-us" id="contact">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
            </ol>
            <div class="row">
                <div class="col-lg-9 align-self-center">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="contact-form">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2 style="color: white;">Let's get in touch</h2>
                                        <div id="SuccessMessage" style="display: none; background-color: #3CF; color:white; width:310px;">
                                            <p style="font-size: 14px; color: #07294d;">Your message has been sent successfully.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label"></label>
                                        <input id="name" type="text" class="form-control" placeholder="Full Name">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label"></label>
                                        <input id="PhoneNo" type="text" class="form-control" placeholder="Mobile No.">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label"></label>
                                        <input id="email" type="text" class="form-control" placeholder="Email">
                                         <span class="errorEmailId" style="color: red;"></span>
                                        <br />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label"></label>
                                        <input id="subject" type="text" class="form-control" placeholder="Subject...">
                                        <br />
                                    </div>

                                    <div class="col-lg-12">
                                        <fieldset>
                                            <textarea id="message" name="message" style="height: 114px;" type="text" class="form-control" placeholder="YOUR MESSAGE..."></textarea>
                                            <br />
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <%-- <input class="btn btn-primary" type="submit" value="Submit">--%>
                                            <div id="submitloding" class="btn btn-primary" style="display: none; color: #00d4ff; width:121px;"><i class="fa fa-circle-o-notch fa-spin"></i>Loading..</div>
                                            <button id="submit" class="btn btn-primary" type="button" onclick="btnSubmit();">
                                                Submit Now
                                            </button>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                            <script>
                                function btnSubmit() {
                                    var isValid = true;
                                    $('#contact-form input[type="text"]').each(function () {
                                        if ($.trim($(this).val()) == '') {
                                            $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                                            isValid = false;
                                        }
                                        else {
                                            $(this).css({ "border": "", "box-shadow": "" });
                                        }
                                    });

                                    var Email = $("#email").val();
                                    var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                                    if (Email != '') {
                                        if (!Email.match(emailExp)) {
                                            $('.errorEmailId').text('Invalid Email Id');
                                            return false;
                                        } else { $('.errorEmailId').text(''); }
                                    }
                                 
                                    if (isValid == false) {

                                        // e.pre
                                    }
                                    else {
                                        var user = {};
                                        user.name = $("#name").val();
                                        user.email = $("#email").val();
                                        user.PhoneNo = $("#PhoneNo").val();
                                        user.subject = $("#subject").val();
                                        user.message = $("#message").val();
                                        $("#submit").css("display", "none");
                                        $("#submitloding").css("display", "block");
                                        $.ajax({
                                            type: "POST",
                                            url: "./contact.aspx/SentMail",
                                            data: '{user: ' + JSON.stringify(user) + '}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (response) {
                                                var userId = response.d;
                                                if (userId == true) {
                                                    $("#SuccessMessage").css("display", "block");
                                                    $("#submit").css("display", "block");
                                                    $("#submitloding").css("display", "none");
                                                    $("#SuccessMessage").fadeOut(6000);
                                                    $('#name').val('');
                                                    $('#email').val('');
                                                    $('#PhoneNo').val('');
                                                    $('#subject').val('');
                                                    $('#message').val('');
                                                }
                                                else {
                                                    alert("Somthing Wrong!");
                                                }
                                            }
                                        });
                                    }
                                }
                            </script>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3">
                    <div class="right-info">
                        <ul>

                            <li>
                                <h6>Email Address</h6>
                                <span>info@pass4job.com</span>
                            </li>
                            <li>
                                <h6>Phone Number</h6>
                                <span>+91-7428563177</span>
                                <span>+1 804 441 8645</span>
                            </li>
                            <li>
                                <h6>Street Address</h6>
                                <span>A-48, Phase-2, Mangol Puri Industrial Area, Pitampura New Delhi - 110034</span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div id="map">
         <div class="mapouter"><div style="width: 100%"><iframe width="100%" height="507" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=400&amp;hl=en&amp;q=A-48,%20phase%202,%20Mangol%20Puri%20Industrial%20Area%20Pitampura%20New%20Delhi%20-%20110034+(Pass4Job)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div></div>
        </div>
    </section>

    <section id="clients" class="clients">
        <div class="container aos-init aos-animate" data-aos="zoom-in">

            <div class="row d-flex align-items-center">

                <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/aws.png" class="img-fluid" alt="">
                    </div>


                    <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/1.png" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/Microsoft.png" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/PMI.png" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/Comptia.png" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/cisco.png" class="img-fluid" alt="">
                    </div>
                     <div class="col-lg-2 col-md-4 col-6" style="width: 13.666667%;">
                        <img src="clients/CIA.png" class="img-fluid" alt="">
                    </div>


            </div>

        </div>
        <style>
            .clients {
                background: #f2f2f2;
                padding: 15px 0;
                text-align: center;
            }
        </style>
         <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: 1251px;" href="https://api.whatsapp.com/send?phone=7428563177" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>
    </section>
</asp:Content>
