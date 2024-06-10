<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="privacy-policy.aspx.cs" Inherits="Pass4Job.privacy_policy" %>

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
                    <h2>Privacy policy</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Privacy policy</li>
            </ol>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="aboutpage">
                                <h2 style="margin-top: 69px;">Privacy policy</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">
                                   Pass4job collects certain information from individuals availing our services like name, contact number, email address. The information is collected while going through the following procedures:                                                                    
                                </p><br />
                                <p style="color: white;">While registering for a particular course</p><br />
                                <p style="color: white;">While making payment for any service</p><br />
                                <p style="color: white;">Connecting with us through our social media profiles/pages/groups on Facebook, LinkedIn, Instagram</p><br />
                                <p style="color: white;">Information collected through our website will be confidential and will not passed to any third party for marketing/promotional purposes.</p><br />
                                <p style="color: white;">All credit/debit card details and personal identifiable information will not be stored, sold or shared to any third party.</p><br />
                                <p style="color: white;">Pass4job uses cookies, tracking pixels and related technologies from third parties like Google, Facebook and affiliate marketing agencies. </p><br />
                               <p style="color: white;">The Website Policies and Terms & Conditions can be changed or updated occasionally to meet the requirements and standards. Customers are encouraged to visit and check if any updations to be their.</p><br />
                            
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
