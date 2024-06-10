<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="refund-policy.aspx.cs" Inherits="Pass4Job.refund_policy" %>
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
                    <h2>Refund policy</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Refund policy</li>
            </ol>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="aboutpage">
                                <h2 style="margin-top: 69px;">Refund policy</h2>
                                <div class="clearfix"></div>
                                <p style="color: white;">
                                  We ensures timely service to our candidates, if there would be any unexpected situation , we have a refund policy for our enrolled candidates  on the below mentioned condition: ( Applicable only for training service)
                                </p><br />
                               <ul>
                                    <li>1. If a trainer is not able to provide training due to any circumstances</li>
                                    <li>2. If there would be any cancellation of the training from our end.</li>
                                    <li>3. Any natural calamities</li>
                                </ul>
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
