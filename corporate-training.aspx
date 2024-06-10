<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="corporate-training.aspx.cs" Inherits="Pass4Job.corporate_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        .aboutpage {
            color: white;
        }
         #meetings{
            padding:2%;
        }
    </style>
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Corporate Training</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Corporate Training</li>
            </ol>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="aboutpage">
                                <h2 style="margin-top: 69px;">Corporate Training</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">
                                    One of the best IT training providers has collaborated with partners from all over the world to educate the professionals on the latest technologies and prepare them to develop competencies for industry-ready skills. With years of experience and domain expertise, we give best solution to our clients all over the globe.<br />
                                    <br />
                                   <b>Classroom Training -Live Virtual Training -Training on demand -Hire a trainer</b>.
                                    <br />
                                </p><br />
                                <h5>Why take Corporate training:-</h5><br />
                                <ul>
                                    <li>⦿ Enhance Employee Performance</li>
                                    <li>⦿ Attract & Retain Talent</li>
                                    <li>⦿ Improves Company’s Service Quality</li>
                                    <li>⦿ Strengthen Culture & Thought Diversity</li>
                                    <li>⦿ Nurture Innovative Ideas</li>
                                    <li>⦿ Reduce Skills-Gap</li>
                                </ul>
                                <br />
                                <b>To get more information, contact us today</b>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="clearfix"></div>
                            <img src="assets/images/aboutus.jpg" />
                        </div>
                    </div>
                </div>
               <%-- <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="aboutpage">
                                <h2 style="margin-top: 69px;">Our Mission</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">To create a platform for students who wish to continue and complete courses by attending live online courses, using a team of fully committed trainers who will stop at nothing to impart education, helped by our support system. By deploying our world class team of industry experts, we goal to educate our learners with the skills they need to advance their professional life to the new era and to provide our best.</p>
                                <h2 style="margin-top: 69px;">Our Vision</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">We have to become a leader in providing value based and higher quality online education. To be a globally preferred organization in the field of online education in IT Certification. Become widely acclaimed for revolution in society through education, upskilling and knowledge improvement.</p>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
        <br />
        <br />
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
                        <a href="https://www.youtube.com/watch?v=HndV87XpkWg" target="_blank">
                            <img src="assets/images/play-icon.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="clients" class="clients">
        <div class="container aos-init aos-animate" data-aos="zoom-in">

            <div class="row d-flex align-items-center">

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/aws.png" class="img-fluid" alt="">
                </div>


                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/1.png" class="img-fluid" alt="">
                </div>

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/Microsoft.png" class="img-fluid" alt="">
                </div>

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/PMI.png" class="img-fluid" alt="">
                </div>

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/Comptia.png" class="img-fluid" alt="">
                </div>

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="clients/cisco.png" class="img-fluid" alt="">
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
    </section>
</asp:Content>
