<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="client-panel.aspx.cs" Inherits="Global_IT_Success.client_panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4>Dashboard</h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li class="active">Dashboard</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="about-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cate-bo">
                        <div id="exTab2">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#1" data-toggle="tab">Profile</a>
                                </li>
                                <li><a href="#2" data-toggle="tab">Product Detail</a>
                                </li>
                                <li><a href="#3" data-toggle="tab">Reviews</a>
                                </li>
                                <li><a href="#4" data-toggle="tab">Reset Password</a>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbLogOut" OnClientClick="return confirm('Are you sure you want to logout ?')" OnClick="lbLogOutClick" runat="server">LogOut</asp:LinkButton>
                                </li>
                            </ul>

                            <div class="tab-content ">
                                <div class="tab-pane active" id="1">
                                    <div class="billing">
                                        <h4 class="mb-4">Profile</h4>
                                        <div id="dvMessage" style="display: none; color: brown">Account has been updated.</div>
                                        <div class="form-row" id="dvRegistration">
                                            <div class="form-group col-md-3">
                                                <label for="inputCity">First Name</label>
                                                <asp:TextBox class="form-control" ID="txtFName" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputZip">Last Name</label>
                                                <asp:TextBox class="form-control" ID="txtLName" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputCity">Gender</label>
                                                <asp:DropDownList ID="ddlGender" runat="server" class="form-control" ClientIDMode="Static">
                                                    <asp:ListItem Value="0">Gender</asp:ListItem>
                                                    <asp:ListItem Value="M">Male</asp:ListItem>
                                                    <asp:ListItem Value="F">Female</asp:ListItem>
                                                    <asp:ListItem Value="O">Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputZip">Email address</label>
                                                <asp:TextBox class="form-control" ID="txtEmailaddress" runat="server" ClientIDMode="Static"></asp:TextBox>
                                                <span class="errorRegistrationEmailId" style="color: red;"></span>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputCity">Phone Number</label>
                                                <asp:TextBox ID="txtPhoneno" runat="server" class="form-control" ClientIDMode="Static" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="15" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputZip">Address</label>
                                                <asp:TextBox class="form-control" ID="txtStateCity" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputZip">Country</label>
                                                <asp:DropDownList ID="ddlCountry" class="form-control" runat="server" ClientIDMode="Static">
                                                    <asp:ListItem Value="1">India</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputZip">State</label>
                                                <asp:DropDownList runat="server" ID="ddlState" class="form-control" ClientIDMode="Static">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputZip">City</label>
                                                <asp:TextBox ID="txtCity" runat="server" Placeholder="City*" spellcheck="false" autocomplete="off" MaxLength="100" class="form-control" ClientIDMode="Static" />
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label for="inputCity">Zip/Postal Code</label>
                                                <asp:TextBox class="form-control" ID="txtZip" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <button id="btnUpdate" type="button" class="btn btn-sm btn-primary con-shop" onclick="Update();">Update</button>
                                                <div id="RegisterLoding" class="btn btn-sm btn-primary con-shop" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="2">
                                    <div class="billing">
                                        <h4 class="mb-4">Product Detail</h4>
                                        <div class="form-row">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Order ID</th>
                                                        <th>Date</th>
                                                        <th>Product Name</th>
                                                        <th>Quantity</th>
                                                        <th>Individual Price</th>
                                                        <th>Price</th>
                                                        <th>GST(18%)</th>
                                                        <th>Total Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:Repeater ID="rptProductDetail" runat="server">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%#Eval("order_no")%></td>
                                                                <td>
                                                                    <%#Eval("Date")%>
                                                                </td>
                                                                <td>
                                                                    <%#Eval("Name")%>
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
                                                                <td>
                                                                    <%#Eval("GST")%>
                                                                </td>
                                                                <td>
                                                                    <%#Eval("AmountWithGST")%>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <tr id="trEmpty" runat="server" visible="false">
                                                                <td colspan="8">
                                                                    <center><strong style="color:red;"> No records found.</strong></center>
                                                                </td>
                                                            </tr>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="3">
                                    <div class="billing">
                                        <h4 class="mb-4">Write Your Own Review</h4>
                                        <div id="dvMessageReview" style="display: none; color: darkgreen">Review has been successfully sent.</div>
                                        <div class="form-row" id="dvReview">
                                            <div class="form-group col-md-6">
                                                <label for="inputCity">Select Course</label>
                                                <asp:DropDownList ID="ddCourse" runat="server" ClientIDMode="Static" class="form-control">
                                                    <asp:ListItem Value="0">Select Course</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputZip">Nickname</label>
                                                <asp:TextBox class="form-control" ID="txtName" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <label for="inputZip">Review</label>
                                                <asp:TextBox class="form-control" ID="txtReview" TextMode="MultiLine" runat="server" ClientIDMode="Static"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <button id="btnReview" type="button" class="btn btn-primary" onclick="review();">Submit Review</button>
                                                <div id="ReviewLoding" class="btn btn-primary" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="4">
                                    <div class="billing">
                                        <h4 class="mb-4">Reset Password</h4>
                                        <div class="form-row" id="dvReset">
                                            <div class="form-group col-md-4">
                                                <label for="inputCity">Current Password</label>
                                                <asp:TextBox runat="server" ID="txtCurrentPassword" class="form-control" TextMode="Password" ClientIDMode="Static"> </asp:TextBox>
                                                <span id="dvErrorMessage" style="display: none; color: red">Please enter the correct current password.</span>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="inputZip">New Password</label>
                                                <asp:TextBox runat="server" ID="txtNewPassword" class="form-control" TextMode="Password" ClientIDMode="Static">
                                                </asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="inputZip">Confirm Password</label>
                                                <asp:TextBox runat="server" ID="txtConfrimPassword" class="form-control" TextMode="Password" ClientIDMode="Static" onkeyup="confirmpassword();">
                                                </asp:TextBox>
                                                <span class="errorConfirmPassword" style="color: red;"></span>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <button id="btnReset" type="button" class="btn btn-primary" onclick="ResetPassword();">Reset Password</button>
                                                <div id="ResetLoding" class="btn btn-primary" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <script>
        function Update() {
            var isValid = true;
            $('#dvRegistration input[type="text"]').each(function () {
                if ($.trim($(this).val()) == '') {
                    isValid = false;
                    $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
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
                user1.Zip = $("#txtZip").val();
                user1.StateCity = $("#txtStateCity").val();
                user1.Country = $("#ddlCountry").val();
                user1.State = $("#ddlState").val();
                user1.City = $("#txtCity").val();
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
        function review() {
            var isValid = true;
            if ($("#ddCourse option:selected").val() == "0") {
                $("#ddCourse").css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                isValid = false;
            }
            else {

                $(this).css({ "border": "", "box-shadow": "" });
            }
            if ($("#txtReview").val() == '') {
                $("#txtReview").attr('style', 'border: 1px solid red !important;');
                isValid = false;
            }
            else {
                $("#txtReview").css({ "border": "", "box-shadow": "" });
            }

            if (isValid == false) {
                // e.pre
            }
            else {
                var review = {};
                review.Course = $("#ddCourse option:selected").val();
                review.Name = $("#txtName").val();
                review.Reviewdetail = $("#txtReview").val();
                $("#btnReview").css("display", "none");
                $("#ReviewLoding").css("display", "block");
                $.ajax({
                    type: "POST",
                    url: "client-panel.aspx/SaveReview",
                    data: '{review: ' + JSON.stringify(review) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var userId = response.d;
                        if (userId == 0) {
                            $("#ddCourse").val("0");
                            $("#ddCourse").css({ "border": "", "box-shadow": "" });
                            $("#btnReview").css("display", "block");
                            $("#ReviewLoding").css("display", "none");
                            $("#dvMessageReview").css("display", "block");
                            $("#dvMessageReview").fadeOut(6000);
                            $("#txtReview").val('');
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
            $('#dvReset input[type="password"]').each(function () {
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
                            window.location.href = 'http://rosseyroyal.com?Session=false';
                        }
                    }
                });
            }
        }
    </script>

    <script>
        var headers = new Headers();
        headers.append("X-CSCAPI-KEY", "UXl3SGNMSnlZOU1OeFZDSHJQZ05PWmNpUkFJUFRmbkZraDl1YU1Zdw==");
        var requestOptions = {
            method: 'GET',
            headers: headers,
            redirect: 'follow'
        };
        let dropdown = document.getElementById('ddlState');
        dropdown.length = 0;

        let defaultOption = document.createElement('option');
        defaultOption.text = 'State*';
        dropdown.add(defaultOption);
        dropdown.selectedIndex = 0;
        fetch("https://api.countrystatecity.in/v1/countries/IN/states", requestOptions)
            .then(
                function (response) {
                    if (response.status !== 200) {
                        console.warn('Looks like there was a problem. Status Code: ',
                            response.status);
                        return;
                    }

                    // Examine the text in the response  
                    response.json().then(function (data) {
                        let option;
                        // var states = new Array();
                        for (let i = 0; i < data.length; i++) {
                            option = document.createElement('option');
                            option.text = data[i].name;
                            option.value = data[i].id;
                            dropdown.add(option);
                            //states.push(option);
                        }
                        var someSession = '<%=Session["State"] != null%>';
                        if (someSession == 'True') {
                            $("#ddlState").val('<%=Session["State"] %>');
                        } else {
                            dropdown.selectedIndex = 0;
                        }
                    });


                }
            )
            .catch(function (err) {
                console.error('Fetch Error -', err);
            });
    </script>
</asp:Content>
