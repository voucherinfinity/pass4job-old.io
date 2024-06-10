<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Pass4Job.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ***** Main Banner Area Start ***** -->
    <section class="section main-banner" id="top" data-section="section1" style="height:730px">
        <img src="assets/images/banner.webp" alt="bnr" />

        <div class="video-overlay header-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="caption">
                            <h6>Hello Students</h6>
                            <h2>Get trained with experienced trainers!  </h2>
                            <p>Expand your skills and upscale your career! Learn from home with our world-class faculty of trainers! </p>
                            <div class="main-button-red">
                                <div class="scroll-to-section"><a href="all-vendors">View Vendors</a>&nbsp;&nbsp;&nbsp;<a href="about" style="padding: 10px;">Learn More</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Main Banner Area End ***** -->

    <section class="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="owl-service-item owl-carousel">
                        <asp:Repeater ID="rptVendors" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <a href='https://pass4job.com/course/<%#Eval("VURL")%>'>
                                        <img src='<%#Eval("ImageUrl","../../images/{0}") %>' alt="<%#Eval("Name") %>" style="background:#fff; border-radius:20px;" />
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                             <div class="item">
                                    
                                        <img src='https://pass4job.com/clients/CIA.png' alt="CIA" style="background:#fff; border-radius:20px;" />
                                   
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="upcoming-meetings" id="meetings">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 style="color: white;">About Pass4Job</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="item" style="margin: 20px;">
                                <p style="color: white; font-size: 15px;">PASS4JOB promise you to provide the best certification and training courses ever. We have to set a benchmark in the tech industry that provides result-oriented IT certification courses to students all around the world.<br /><br />
                                 Pass4job provides training for world-leading vendors such as<b> Oracle, CompTIA, ISACA, Citrix, Microsoft, Juniper, EC-Council, AWS, Exin, Cisco, Palo Alto, and many others</b>. <br /><br />
                                 Our goal is to change lives by teaching IT certification to the tens of thousands of students that learn at the Pass4job.</p>
                                <div class="main-button-yellow">
                                    <br />
                                    <div><a href="about">Read More</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 align-self-center">
                            <div class="item">
                                <img src="assets/images/Abut.webp" alt="Course One">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>

    <section class="our-facts">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>A Few Facts About Our Company</h2>
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-12">
                                    <div class="count-area-content">
                                        <div class="count-digit">94000</div>
                                        <div class="count-title">Candidates</div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="count-area-content">
                                        <div class="count-digit">1000</div>
                                        <div class="count-title">Trainers</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-12">
                                    <div class="count-area-content new-students">
                                        <div class="count-digit">7000</div>
                                        <div class="count-title">Programs</div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="count-area-content">
                                        <div class="count-digit">150</div>
                                        <div class="count-title">Vendors</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="video">
                        <a href="#" target="_blank">
                            <img src="" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our-courses" id="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2 style="text-align:center;">Testimonials</h2>
                    </div>
                </div>
                <div class="col-lg-12">


                    <div class="owl-service-item owl-carousel">
                        <div class="item">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="assets/images/testimonial45.jpg" alt="Card image cap">
                                <div class="card-body" style="height: 244px;">
                                    <h5 class="card-title" style="text-align:center;">Katie Daniel</h5>
                                    <p class="card-text" style="text-align:center;">Had a wonderful experience with Pass4job while doing my AWS Online course. Both the trainer and the support team were amazing. Their promptness and dedication is great. Thanks Pass4job for your support.</p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="text-align:center;">Singapore</li>
                                </ul>
                           
                            </div>
                           
                        </div>
                       <div class="item">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="assets/images/testimonial452.jpg" alt="Card image cap">
                                <div class="card-body" style="height: 244px;">
                                    <h5 class="card-title" style="text-align:center;">Sumit Parab</h5>
                                    <p class="card-text" style="text-align:center;">Pass4job is the best training providing company I know, the CCNA training provide by the trainer was really good. All the topics were covered and very clearly explained by trainer. I recommended it to all who want to do a training in CISCO.</p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="text-align:center;">India</li>
                                   
                                </ul>
                            
                            </div>
                           
                        </div>  <div class="item">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="assets/images/testimonial.jpg" alt="Card image cap">
                                <div class="card-body" style="height: 244px;">
                                    <h5 class="card-title" style="text-align:center;">Anis Ahmed</h5>
                                    <p class="card-text" style="text-align:center;">I attended Comptia Training. The trainer was amazing; he was the game changer for my career. All thanks to Pass4job. </p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="text-align:center;">Saudi</li>
                                
                                </ul>
                            
                            </div>
                           
                        </div>

                    </div>

                </div>
        </div>
        </div>
    </section>

    <section class="apply-now" id="apply">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="item">
                               <h3>START LEARNING TODAY</h3>
                                <p>By choosing Pass4Job you’ll learn in-demand skills that will have you job-ready.</p>
                                <div class="main-button-red">
                                    <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="item">
                                 <h3>Any Doubts?</h3>
                                <p>Don't Stop learning. We are happy to help you with your doubts.</p>
                                <div class="main-button-yellow">
                                    <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="accordions is-first-expanded">
                        <article class="accordion">
                            <h2 style="text-align: center;">Got questions?</h2>
                            <div class="accordion-head">

                                <span>Do I have to go through the course material before I come?</span>
                                <span class="icon">
                                    <i class="icon fa fa-chevron-right"></i>
                                </span>
                            </div>
                            <div class="accordion-body">
                                <div class="content">
                                    <p> It is recommended but not compulsory it’s all up to you. As being familiarize with the basic course will help you as well as trainer to move at a desired pace during sessions. </p>
                                </div>
                            </div>
                        </article>
                        <article class="accordion">
                            <div class="accordion-head">
                                <span>Do you offer corporate training?</span>
                                <span class="icon">
                                    <i class="icon fa fa-chevron-right"></i>
                                </span>
                            </div>
                            <div class="accordion-body">
                                <div class="content">
                                    <p>
                                      Yes, we do provide corporate trainings.
                                    </p>
                                </div>
                            </div>
                        </article>
                        <article class="accordion">
                            <div class="accordion-head">
                                <span>Can I Asked for a demo class before doing registration?</span>
                                <span class="icon">
                                    <i class="icon fa fa-chevron-right"></i>
                                </span>
                            </div>
                            <div class="accordion-body">
                                <div class="content">
                                    <p>
                                       Yes, you can request the concern person for the same.
                                    </p>
                                </div>
                            </div>
                        </article>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<section class="our-courses" id="courses" style="display:none;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Course Categories</h2>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="owl-courses-item owl-carousel">
                        <asp:Repeater ID="rptCourseCategory" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="down-content" style="border-radius: 20px;">
                                        <h4 style="height: 77px;"><a href="../../courses-category/<%#Eval("URL")%>" style="color:#f5a425;"><%#Eval("Name") %></a></h4>
                                        <div class="info">
                                            <div class="row">
                                                <div class="col-6">
                                                    <p>Trainings(<%#Eval("CourseCount") %>)</p>
                                                </div>
                                                <div class="col-6">
                                                    <a class="more" style="color:#f5a425;" href="../../courses-category/<%#Eval("URL")%>">Read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>
        </div>
    </section>--%>
    
<%--    <section class="our-courses" id="courses" style="display:none;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Our Popular Courses</h2>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="owl-courses-item owl-carousel">
                        <asp:Repeater ID="rptPopularCourse" runat="server">
                            <ItemTemplate>
                                <div class="item" style="background: white;">
                                    <a href="<%#Eval("Link") %>">
                                        <img src='<%#Eval("ImageUrl","../../images/{0}") %>' alt="<%#Eval("CourseName") %>" style="background:#f0f8ff; border: 1px solid #a0a2a5;"></a>
                                    <div class="down-content">
                                        <h4 style="height: 115px;"><a href="<%#Eval("Link") %>" style="color:#f5a425;"><%#Eval("CourseName") %></a></h4>
                                      
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>

    
    <section class="contact-us" id="contact">
        <div class="container">
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
                                            url: "https://pass4job.com/index.aspx/SentMail",
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
        <br /><br />
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
     <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6368928bb0d6371309cda558/1gh87ossd';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
         <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: -674px;" href="https://api.whatsapp.com/send?phone=7428563177" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>
       <!-- <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: 601px;" href="https://api.whatsapp.com/send?phone=7428563177" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>-->
        </section>
      
</asp:Content>
