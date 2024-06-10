<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="vendors.aspx.cs" Inherits="Pass4Job.vendors" %>

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
                    <h2>All Vendors</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href="https://pass4job.com/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Vendors</li>
            </ol><br />
            <div class="row">
                <div class="col-lg-12">

                    <div class="row grid" style="margin: 0px 0px 0px 37px;">
                        <asp:Repeater ID="rptVenders" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 templatemo-item-col all soon" style="position: absolute;left: 13px;top: 0px;">
                                    <div class="meeting-item" style="background-color:white; border-radius:20px;">
                                        <div class="thumb">
                                           
                                            <a href="https://pass4job.com/course/<%#Eval("VURL")%>">
                                                <img src='<%#Eval("ImageUrl","https://pass4job.com/images/{0}") %>' alt="<%#Eval("Name")%>"></a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                          <div class="col-lg-4 templatemo-item-col all soon" style="position: absolute;left: 13px;top: 0px;">
                                    <div class="meeting-item" style="background-color:white; border-radius:20px;">
                                        <div class="thumb">
                                            
                                                <img src='https://pass4job.com/clients/CIA1.png' alt="CIA" >
                                        </div>
                                    </div>
                                </div>
                       <%-- <div class="col-lg-12">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>



     <%--   <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="row grid">

                                <div class="col-lg-4 templatemo-item-col all soon">
                                    <div class="meeting-item" style="background: white;">
                                        <div class="thumb">
                                           
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
         <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: 1251px;" href="https://api.whatsapp.com/send?phone=7428563177" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>
    </section>

</asp:Content>
