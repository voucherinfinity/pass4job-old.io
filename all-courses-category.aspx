<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="all-courses-category.aspx.cs" Inherits="Pass4Job.all_courses_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .aboutpage {
            color: white;
        }
         #courses{
            padding:2%;
        }
    </style>
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Course Categories</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="our-courses" id="courses">
        <div class="container">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Course Categories</li>
            </ol>
            <br />
            <div class="row">

                <div class="col-lg-12">
                    <div class="owl-courses-item owl-carousel">
                        <asp:Repeater ID="rptCourseCategory" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="down-content" style="border-radius: 20px;">
                                        <h4 style="height: 77px;"><a href="https://pass4job.com/courses-category/<%#Eval("URL")%>" style="color: #f5a425;"><%#Eval("Name") %></a></h4>
                                        <div class="info">
                                            <div class="row">
                                                <div class="col-6">
                                                    <p>Trainings (<%#Eval("CourseCount") %>)</p>
                                                </div>
                                                <div class="col-6">
                                                    <a class="more" href="https://pass4job.com/courses-category/<%#Eval("URL")%>" style="color: #f5a425;">Read more</a>
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
    </section>

</asp:Content>
