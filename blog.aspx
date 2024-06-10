<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="Global_IT_Success.blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4>BLOG</h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li id="ContentPlaceHolder1_hCategoryName" class="active">BLOG</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Blog Section-->
    <section class="about-page" style="padding-left: 35px; padding-right: 35px;">
        <div class="container">
        </div>
        <div class="row">
            <asp:Repeater ID="rptBlog" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="course-hold mb-4">
                            <div class="cr-box d-flex align-items-center mb-3">
                                <div class="course">
                                    <a href="./blogs/<%#Eval("Url")%>">
                                        <img src="<%#Eval("ImageUrl","images/{0}") %>" alt="<%#Eval("Name") %>" width="486px" height="243px" >
                                    </a>
                                </div>
                            </div>
                            <div class="cr-box ">
                                <div class="course-text2">
                                    <h4><%# string.Format("{0:dd MMM, yyyy}", Eval("PostedDate"))%></h4>
                                    <a href="./blogs/<%#Eval("Url")%>">
                                        <h5 style="height: 36px;"><%#Eval("Name") %></h5>
                                    </a>
                                </div>
                            </div>
                            <div class="course-footer2 d-flex align-items-center">
                                <div class="course-price2 d-flex">

                                    <div class="text-center">

                                        <p style="text-align:justify;"><%#Eval("ShortDetail") %></p>
                                        <br />
                                        <a href="./blogs/<%#Eval("Url")%>" class="blogref">READ MORE></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </section>
</asp:Content>
