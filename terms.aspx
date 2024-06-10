<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="Pass4Job.terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .aboutpage {
            color: white;
        }

        #meetings {
            padding: 2%;
        }
    </style>
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Terms & conditions</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Terms & conditions</li>
            </ol>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="aboutpage">
                                <h2 style="margin-top: 69px;">Terms & conditions</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">
                                   All the content on our website in the form of  product information, datasheets, images, or other material  is secured by copyright and other laws.                               
                                </p><br />
                                <p style="color: white;">Limitation For Usage</p><br />
                                <p style="color: white;">We provide the services, products, and software on this website for your personal and non-commercial use.. You are strictly prohibited to copy, modify, transfer, reproduce, republish or sell any information that you get from the website.</p><br />
                                <p style="color: white;">Copyright and Intellectual Property</p><br />
                                <p style="color: white;">Our website and its content are protected by copyright and other trademark laws. The material on our website, including logo, text, graphics, code, or software is copyrighted and is the sole property of Pass4job. No one is allowed to use our logo/image from our website, if we got to know any such case, it may lead to legal action to be taken.</p><br />
                                <p style="color: white;">The permission to be taken for any authenticated or non-commercial use of the content or material of our website site.</p><br />
                                
                            
                            </div>
                        </div>

                        
                    </div>
                </div>
                
            </div>
        </div>
        <br />
        <br />
    </section>
    
</asp:Content>
