<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="course-details.aspx.cs" Inherits="Pass4Job.course_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://pass4job.com/assets/css/tab.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .detailing {
            padding: 2%;
        }

        #meetings {
            padding: 2%;
        }
    </style>

    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 id="hCourseName" runat="server"></h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="detailing">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="." style="color: #f5a425;">Home</a></li>
                <li id="lheaderTag" runat="server" class="breadcrumb-item active" aria-current="page"></li>
            </ol>
            <br />
            <asp:Repeater ID="rptCourseDetail" runat="server">
                <ItemTemplate>
                    <div class="row flex-row-reverse">
                        <div class="col-lg-9">
                            <h1><%#Eval("Name1")%></h1>
                            <p>
                                <%#Eval("Detail1")%>
                            </p>
                            <%--                            <div class="tab_container">
                                <input id="tab1" type="radio" name="tabs" checked oncilck="displayRadioValuabe()">
                                <label class="labeltab" for="tab1"><span><%#Eval("Name2")%></span></label>

                                <input id="tab2" type="radio" name="tabs" oncilck="displayRadioValuabe()">
                                <label class="labeltab" for="tab2"><span><%#Eval("Name3")%></span></label>
                                <div visible='<%#Convert.ToString(Eval("Name4"))=="" ? false:true %>' runat="server">
                                    <input id="tab3" type="radio" name="tabs" oncilck="displayRadioValuabe()">
                                    <label class="labeltab" for="tab3"><span><%#Eval("Name4")%></span></label>
                                </div>
                                <div visible='<%#Convert.ToString(Eval("Name5"))=="" ? false:true %>' runat="server">
                                    <input id="tab4" type="radio" name="tabs" oncilck="displayRadioValuabe()">
                                    <label class="labeltab" for="tab4"><span><%#Eval("Name5")%></span></label>
                                </div>
                             

                                <section id="content1" class="tab-content">
                                    <h3><%#Eval("Detail2")%></h3>

                                </section>

                                <section id="content2" class="tab-content">
                                    <h3><%#Eval("Detail3")%> </h3>

                                </section>

                                <section id="content3" class="tab-content" runat="server" clientidmode="Static" visible='<%#Convert.ToString(Eval("Name4"))=="" ? false:true %>'>
                                    <h3><%#Eval("Detail4")%></h3>

                                </section>

                                <section id="content4" class="tab-content" runat="server" clientidmode="Static" visible='<%#Convert.ToString(Eval("Name5"))=="" ? false:true %>'>
                                    <h3><%#Eval("Detail5")%></h3>

                                </section>
                               
                            </div>--%>
                        </div>
                        <div class="col-lg-3">

                            <img src='<%#Eval("VImageUrl","https://pass4job.com//images/{0}") %>' alt="<%#Eval("Name")%>" style="background: #f0f8ff; border: 5px solid #a0a2a5; height: 169px; box-shadow: rgba(0, 0, 0, 0.35) 0px -50px 36px -28px inset;">
                            <div class="right-info" style="position: sticky; top: 0px;">
                                <br>
                                <div style="border: 5px solid #a0a2a5; padding: 13px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px -50px 36px -28px inset;">
                                    <div class="row" id="contact-form">
                                        <div id="SuccessMessage" style="display: none; background-color: #3CF; color:white; width:310px;">  <p style="font-size: 14px; color: #07294d;">Your message has been sent successfully.</p> </div>
                                        <div class="col-md-12">
                                            <h4 class="title">Enquire Now</h4>
                                            <br />
                                            
                                          
                                        </div>
                                       
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyName" CssClass="form-control" runat="server" Placeholder="Full Name" ClientIDMode="Static"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyEmail" CssClass="form-control" runat="server" Placeholder="Email ID" ClientIDMode="Static"></asp:TextBox><br />
                                                <span class="errorEmailId" style="display: none; color: red;"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyPhone" runat="server" CssClass="form-control" Placeholder="Phone Number" ClientIDMode="Static" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="15"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtMessage" CssClass="form-control" runat="server" Placeholder="Message" ClientIDMode="Static"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                             <center>   <div id="submitloding" class="btn btn-primary" style="display: none; color: white; width:121px; background-color: #f5a425; border-color: #f5a425;;"><i class="fa fa-circle-o-notch fa-spin"></i>Loading..</div>
                                                <button id="btnsubmit" class="btn btn-primary" type="button" style="background-color: #f5a425; border-color: #f5a425;" onclick="btnSubmit();">
                                                    Submit Now
                                                </button></center>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
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
                var Email = $("#txtReplyEmail").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $(".errorEmailId").css({ "display": "block" });
                        $('.errorEmailId').text('Invalid Email Id');
                        return false;
                    } else { $(".errorEmailId").css({ "display": "none" }); $('.errorEmailId').text(''); }
                }
                if (isValid == false) {

                    // e.pre
                }
                else {
                    var user = {};
                    user.name = $("#txtReplyName").val();
                    user.email = $("#txtReplyEmail").val();
                    user.PhoneNo = $("#txtReplyPhone").val();
                    user.Message = $("#txtMessage").text();
                    $("#btnsubmit").css("display", "none");
                    $("#submitloding").css("display", "block");
                    $.ajax({
                        type: "POST",
                        url: "../course-details.aspx/SentMailfromCoursePage",
                        data: '{user: ' + JSON.stringify(user) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var userId = response.d;
                            if (userId == true) {
                                $("#btnsubmit").css("display", "block");
                                $("#submitloding").css("display", "none");
                                $('#txtReplyName').val('');
                                $('#txtReplyEmail').val('');
                                $('#txtReplyPhone').val('');
                                $('#txtMessage').val('');
                                $("#SuccessMessage").css("display", "block");
                                $("#SuccessMessage").fadeOut(6000);
                            }
                            else {
                                alert("Somthing Wrong!");

                            }
                        }
                    });
                }
            }
        </script>
         <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: 1251px;" href="https://api.whatsapp.com/send?phone=7428563177" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>
    </section>

    <asp:HiddenField ID="hdnTitle" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnExamName" runat="server" />
</asp:Content>
