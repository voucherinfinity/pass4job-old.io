<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="Pass4Job.courses" %>
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
                    <h2 id="hCategoryName" runat="server" class="title"></h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>
    <section class="meetings-page" id="meetings">
        <div class="container">
             <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href="../../">Home</a></li>
                  <li class="breadcrumb-item"><a href="../../all-courses-category">Course Category</a></li>
                <li class="breadcrumb-item active" aria-current="page" id="lVendorName" runat="server"></li>
            </ol><br />
            <div class="row">
                <div class="col-lg-12">

                    <div class="row grid">
                        <asp:Repeater ID="rptCourse" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 templatemo-item-col all soon">
                                    <div class="meeting-item" style="background-color:white;">
                                        <div class="thumb">
                                          
                                            <a href="../../course/<%#Eval("URL")%>" style="color:#f5a425; ">
                                                <img src='<%#Eval("ImageUrl","../../images/{0}") %>' alt="<%#Eval("Name") %>" style="background:#f0f8ff; border: 1px solid #a0a2a5; height: 169px;"></a>
                                        </div>
                                        <div class="down-content">
                                            
                                            <a href="../../course/<%#Eval("URL")%>">
                                                <h4 style="height:46px;"><a href="../../course/<%#Eval("URL")%>" style="color:#f5a425; "><%#Eval("Name") %></a></h4>
                                            </a>
                                           <%-- <p><a class="more" href="../../course/<%#Eval("URL")%>" style="color:#f5a425; argin-left: 136px; ">Read more </a></p>--%>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

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

    </section>

</asp:Content>
