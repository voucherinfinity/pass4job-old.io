<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="client-panel.aspx.cs" Inherits="Pass4Job.client_panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial;
        }

        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: #ccc;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
            background-color: #dddddd;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Sign In/Sign Up</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-us" id="contact">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href=".">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Panel</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab">
                        <button type="button" class="tablinks active" onclick="openCity(event, 'Profile')">Profile</button>
                        <button type="button" class="tablinks" onclick="openCity(event, 'Product')">Product</button>
                        <button type="button" class="tablinks" onclick="openCity(event, 'Reset')">Reset Password</button>
                        <button type="button" class="tablinks" onclick="openCity(event, 'LogOut')">LogOut</button>
                    </div>

                    <div id="Profile" class="tabcontent" style="display: block;">

                        <div class="row">
                            <div id="dvMessage" style="display: none; color: aqua">Record has been updated.</div>
                            <div class="col-md-6">
                                <label for="state" style="color: white;">First Name*</label>
                                <asp:TextBox class="form-control" ID="txtFName" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">Last Name*</label>
                                <asp:TextBox class="form-control" ID="txtLName" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">Gender*</label>
                                <asp:DropDownList ID="ddlGender" runat="server" class="form-control" ClientIDMode="Static">
                                    <asp:ListItem Value="0">Gender</asp:ListItem>
                                    <asp:ListItem Value="M">Male</asp:ListItem>
                                    <asp:ListItem Value="F">Female</asp:ListItem>
                                    <asp:ListItem Value="O">Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <label for="state" style="color: white;">Email address*</label>
                                <asp:TextBox class="form-control" ID="txtEmailaddress" runat="server" ClientIDMode="Static"></asp:TextBox>
                                <span class="errorRegistrationEmailId" style="color: red;"></span>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="state" style="color: white;">Phone Number*</label>
                                <asp:TextBox ID="txtPhoneno" runat="server" class="form-control" ClientIDMode="Static" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="15" />
                            </div>
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">Location*</label>
                                <asp:TextBox class="form-control" ID="txtAddress" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="state" style="color: white;">Zip*</label>
                                <asp:TextBox class="form-control" ID="txtZip" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">Action</label><br />
                                <button id="btnUpdate" type="button" class="btn btn-primary" onclick="Update();">Update</button>
                                <div id="RegisterLoding" class="btn btn-primary" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                            </div>
                        </div>
                    </div>
                    <div id="Product" class="tabcontent">

                        <table>
                            <tr>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Total Price</th>
                            </tr>
                            <asp:Repeater ID="rptProductDetail" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("order_no")%></td>
                                        <td>
                                            <%#Eval("Date")%>
                                        </td>
                                        <td>PTE Exam Vouchers
                                        </td>
                                        <td>
                                            <%#Eval("Quantity")%>
                                        </td>
                                        <td>
                                            <%#Eval("Price")%>
                                        </td>
                                        <td>
                                            <%#Eval("TotalPrice")%>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <tr id="trEmpty" runat="server" visible="false">
                                        <td colspan="6">
                                            <center><strong style="color:red;">   No records found.</strong></center>
                                        </td>
                                    </tr>
                                </FooterTemplate>
                            </asp:Repeater>
                        </table>

                    </div>

                    <div id="Reset" class="tabcontent">
                        <div class="row">
                            <span id="dvErrorMessage" style="display: none; color: red">Please enter the correct current password.</span>
                            <div class="col-md-6">
                                <label for="state" style="color: white;">Current Password*</label>
                                <asp:TextBox runat="server" ID="txtCurrentPassword" class="form-control" TextMode="Password" ClientIDMode="Static" placeholder="Current Password*"> </asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">New Password*</label>
                                <asp:TextBox runat="server" ID="txtNewPassword" class="form-control" TextMode="Password" ClientIDMode="Static" placeholder="New Password*"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="state" style="color: white;">Confirm Password*</label>
                                <asp:TextBox runat="server" ID="txtConfrimPassword" class="form-control" TextMode="Password" ClientIDMode="Static" placeholder="Confirm Password*" onkeyup="confirmpassword();"></asp:TextBox>
                                <span class="errorConfirmPassword" style="color: red;"></span>
                            </div>
                            <div class="col-md-6">
                                <label for="zip" style="color: white;">Action</label><br />

                                <input id="btnReset" type="button" class="btn btn-primary" value="Reset Password" onclick="ResetPassword();">
                                <div id="ResetLoding" class="btn btn-primary" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                            </div>
                        </div>
                    </div>
                    <div id="LogOut" class="tabcontent">
                        <h3>LogOut</h3>
                          <asp:LinkButton ID="lbLogOut" class="nav-link " OnClientClick="return confirm('Are you sure you want to logout ?')" OnClick="lbLogOutClick" runat="server">LogOut</asp:LinkButton></li>
                    </div>
                    <br />
                    <br />
                    <script>
                        function openCity(evt, cityName) {
                            var i, tabcontent, tablinks;
                            tabcontent = document.getElementsByClassName("tabcontent");
                            for (i = 0; i < tabcontent.length; i++) {
                                tabcontent[i].style.display = "none";
                            }
                            tablinks = document.getElementsByClassName("tablinks");
                            for (i = 0; i < tablinks.length; i++) {
                                tablinks[i].className = tablinks[i].className.replace(" active", "");
                            }
                            document.getElementById(cityName).style.display = "block";
                            evt.currentTarget.className += " active";
                        }
                    </script>
                </div>
                <br />
                <br />
            </div>
        </div>
        <script>
            function Update() {
                var isValid = true;
                $('#dvRegistration input[type="text"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                        //$("#txtMiddleName").css({ "border": "", "box-shadow": "" });
                    }
                    else {
                        $(this).css({ "border": "", "box-shadow": "" });
                    }
                });
                if ($("#ddlGender option:selected").val() == "0") {
                    $("#ddlGender").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    isValid = false;
                }
                else {
                    $("#ddlGender").css({ "border": "", "box-shadow": "" });
                }
                if ($("#ddlState option:selected").text() == "State*") {
                    $("#ddlState").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    isValid = false;
                }
                else {
                    $("#ddlState").css({ "border": "", "box-shadow": "" });
                }
                var Email = $("#txtEmailaddress").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $('.errorRegistrationEmailId').text('Invalid Email Id');
                        return false;
                    }
                }
                if (isValid == false) {
                    // e.pre
                }
                else {
                    var user1 = {};
                    user1.FName = $("#txtFName").val();
                    user1.LName = $("#txtLName").val();
                    user1.Gender = $("#ddlGender option:selected").val();
                    user1.Emailaddress = $("#txtEmailaddress").val();
                    user1.Phoneno = $("#txtPhoneno").val();
                    user1.Address = $("#txtAddress").val();
                    user1.Zip = $("#txtZip").val();
                    $("#btnUpdate").css("display", "none");
                    $("#RegisterLoding").css("display", "block");
                    $.ajax({
                        type: "POST",
                        url: "client-panel.aspx/SaveUser",
                        data: '{user1: ' + JSON.stringify(user1) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var userId = response.d;
                            if (userId == 0) {
                                //SetDialogMessage('This Email Id is already exist', 'false');
                                $("#btnUpdate").css("display", "block");
                                $("#RegisterLoding").css("display", "none");
                                $("#dvMessage").css("display", "block");
                                $("#dvMessage").fadeOut(6000);
                            }
                            else {


                            }
                        }
                    });
                }
            }
        </script>
        <script>
            function confirmpassword() {
                var returnvalue = false;
                $('#txtConfrimPassword').keyup(function (e) {
                    var pass = $('#txtNewPassword').val();
                    var confpass = $(this).val();
                    if (pass == confpass) {
                        $('.errorConfirmPassword').text('');
                        returnvalue = true;
                    } else {
                        $('.errorConfirmPassword').text('Password not matching');
                        returnvalue = false;
                    }
                });
            }
            function ResetPassword() {
                var isValid = true;
                $('#Reset input[type="password"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                        //$("#txtMiddleName").css({ "border": "", "box-shadow": "" });
                    }
                    else {
                        $(this).css({ "border": "", "box-shadow": "" });
                    }
                });

                if (isValid == false) {
                    // e.pre
                }
                else {
                    var reset = {};
                    reset.CurrentPassword = $("#txtCurrentPassword").val();
                    reset.NewPassword = $("#txtNewPassword").val();
                    reset.ConfrimPassword = $("#txtConfrimPassword").val();
                    $("#btnReset").css("display", "none");
                    $("#ResetLoding").css("display", "block");
                    $.ajax({
                        type: "POST",
                        url: "client-panel.aspx/ResetPassword",
                        data: '{reset: ' + JSON.stringify(reset) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var userId = response.d;
                            if (userId == 0) {
                                //SetDialogMessage('This Email Id is already exist', 'false');
                                $("#btnReset").css("display", "block");
                                $("#ResetLoding").css("display", "none");
                                $("#dvErrorMessage").css("display", "inline");
                                $("#dvErrorMessage").fadeOut(6000);
                            }
                            else {
                                sessionStorage.clear();
                                window.location.href = 'https://pass4job.com/pte-exam/?Session=false';
                            }
                        }
                    });
                }
            }
        </script>
    </section>
</asp:Content>
