<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Pass4Job.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
            
        }

        .col-75 {
            -ms-flex: 75%; /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }



        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        .btn {
            background-color: #04AA6D;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }

            .btn:hover {
                background-color: #45a049;
            }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }

        .loader-fix {
            position: fixed;
            text-align: center;
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            left: 0;
            z-index: 9999999;
            background-color: #e5dada36;
            opacity: .7
        }

        .loader-fix1 {
            position: fixed;
            top: 50%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Checkout</h2>
                    <%--  <h2>Upcoming Meetings</h2>--%>
                </div>
            </div>
        </div>
    </section>
   
    <asp:HiddenField ID="hdnTotalAmount" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnOrderID" runat="server" ClientIDMode="Static"  />

    <section class="meetings-page" id="meetings">
        <div class="row" style="margin-top: -97px;">
            <div class="col-75">
                <div class="container">

                    <div class="row" id="dvRegistration">
                        <div class="col-50">
                            <h3 style="color: white;">Billing Address
                                <hr />
                            </h3>
                            <div class="row">
                                <div class="col-50">
                                    <label for="state" style="color: white;">First Name*</label>
                                    <asp:TextBox ID="txtFName" runat="server" Placeholder="First Name" spellcheck="false" autocomplete="off" class="form-control" MaxLength="150" ClientIDMode="Static" />
                                </div>
                                <div class="col-50">
                                    <label for="zip" style="color: white;">Last Name*</label>
                                    <asp:TextBox ID="txtLName" runat="server" Placeholder="Last Name" spellcheck="false" autocomplete="off" class="form-control" MaxLength="150" ClientIDMode="Static" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-50">
                                    <label for="zip" style="color: white;">Gender*</label>
                                    <asp:DropDownList ID="ddlGender" runat="server" class="form-control" Height="50px" ClientIDMode="Static">
                                        <asp:ListItem Value="0">Gender*</asp:ListItem>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                        <asp:ListItem Value="O">Other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-50">
                                    <label for="state" style="color: white;">Phone Number*</label>
                                    <asp:TextBox ID="txtPhoneNo" runat="server" Placeholder="Phone Number" spellcheck="false" class="form-control" ClientIDMode="Static" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="15" />
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-50">
                                    <label for="state" style="color: white;">Location*</label>
                                    <asp:TextBox ID="txtAddress" runat="server" Placeholder="Location" spellcheck="false" class="form-control" ClientIDMode="Static" />
                                </div>
                                <div class="col-50">
                                    <label for="zip" style="color: white;">Zip*</label>
                                    <asp:TextBox ID="txtZip" runat="server" Placeholder="Zip" spellcheck="false" class="form-control" ClientIDMode="Static" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-50">
                                    <label for="state" style="color: white;">Email ID*</label>
                                    <asp:TextBox ID="txtRegistrationEmailId" runat="server" Placeholder="Email ID*" spellcheck="false" autocomplete="off" MaxLength="250" class="form-control" ClientIDMode="Static" />
                                    <span class="errorRegistrationEmailId" style="color: red;"></span>
                                </div>
                                <div class="col-50">
                                    <label for="zip" style="color: white;">Password*</label>
                                    <asp:TextBox ID="txtRegistrationPassword" runat="server" TextMode="Password" Height="50px" Placeholder="Password*" class="form-control" ClientIDMode="Static" />
                                </div>
                                <%-- <div class="col-50">
                                            <label for="zip" style="color: white;">Remarks</label>
                                            <asp:TextBox ID="txtnotes" runat="server" TextMode="Password" Height="50px" Placeholder="Remarks" class="form-control" ClientIDMode="Static" />
                                        </div>--%>
                            </div>
                        </div>



                    </div>
                    <br />
                    <label style="color: white;">
                        <input type="checkbox" name="terms" id="terms">
                        I have read and agree to the website
                    </label>
                    <br />
                    <span id="errorTerms" style="color: red;"></span>

                    <br />
                    <button id="Register" type="button" class="btn btn-primary" onclick=" abc();">Place order</button>
                    <div id="RegisterLoding1" class="btn btn-primary" style="display: none; width: 957px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                    <h5 style="color: white; display: none;" id="orderid">
                        <b>Order ID:
                            <asp:Label ID="lblOrderID" runat="server" ClientIDMode="Static"></asp:Label><br />
                            Total Amount: ₹<asp:Label ID="lblAmount" runat="server" ></asp:Label>
                        </b>
                    </h5>

                    <br />
                    <button id="btnPay" type="button" class="btn btn-primary" style="display: none;" >Pay Now</button>
                    <%-- <input type="submit" value="Pay" class="btn btn-primary" style="width: 300px;">
                            <input type="submit" value="Cancel" class="btn btn-primary" style="width: 300px;">--%><br />
                    <br />
                </div>
            </div>
            <div class="col-25">
            <%--     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <div class="loader-fix">
                            <img src="../images/loader.gif" alt="wait image" style="width: 60px; height: 60px;" class="loader-fix1" />
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                        <div class="container">
                            <h4 style="color: white;">Product Detail   
                        <hr />
                            </h4>
                            <br />

                            <p>
                                <a href="pte-exam">PTE Exam Voucher </a><strong style="color: white">X</strong>
                                <asp:DropDownList ID="ddQuantity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddQuantity_SelectedIndexChanged">
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                </asp:DropDownList>
                                <span class="price" style="color: white"><b style="color: white">₹<asp:Label ID="tdSubTotal" runat="server"></asp:Label></b></span>
                            </p>
                            <hr style="color: white">
                            <p style="color: white">Total Price<span class="price"><b style="color: white">₹<asp:Label ID="sTotal" runat="server"></asp:Label></b></span></p>

                            <p style="color: white">GST (18.00%) <span class="price"><b style="color: white">₹<asp:Label ID="IGST" runat="server"></asp:Label></b></span></p>
                            <hr style="color: white">
                            <p style="color: white">Grand Total Price<span class="price"><b style="color: white">₹<asp:Label ID="GrandTotal" runat="server" ClientIDMode="Static"></asp:Label></b></span></p>
                        </div>
             <%--      </ContentTemplate>
                    </asp:UpdatePanel>--%>
            </div>

        </div>
    </section>

 
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var options = {
            "key": "rzp_live_JKaaXibRI4FNdK", // Enter the Key ID generated from the Dashboard   
            "amount": document.getElementById("hdnTotalAmount").value, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise    
            "currency": "INR",
            "name": "PTE Exam Vouchers",
            // "description": "Test Transaction",
            "image": "https://pass4job.com/assets/images/logo.png",
            "order_id": document.getElementById("hdnOrderID").value, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1    
            "handler": function (response) {
                $("#meetings").append('<div class="wrapper-2" id="overlay" style="background-color:darkgray;position:absolute;top:0;left:0;height:1730px;width:1349px;position:fixed;z-index:999"><p style="font-size:30px; text-align:center; margin:150px; color:#FFF;">Please Wait for some time .....</p></div>');
                var order = {};
                // alert(response.razorpay_payment_id);
                // alert(document.getElementById("hdnOrderID").value);
                // alert(response.razorpay_signature);
                order.razorpay_payment_id = response.razorpay_payment_id;
                order.razorpay_order_id = document.getElementById("hdnOrderID").value;
                order.razorpay_signature = response.razorpay_signature;
                $.ajax({
                    type: "POST",
                    url: "checkout.aspx/SaveUser1",
                    data: '{order: ' + JSON.stringify(order) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var userId = response.d;
                        if (userId == 0) {
                            window.location.href = 'success';
                        }

                    }
                });
            },
            "prefill": {
                "name": document.getElementById("txtFName").value,
                "email": document.getElementById("txtRegistrationEmailId").value,
                "contact": document.getElementById("txtPhoneNo").value
            },
            "method": {
                "EMI": "0",
                "credit_card": "0",
                "Wallet": "0"

            },
            // "notes": { "address": "Razorpay Corporate Office" },
            "theme": { "color": "#233b88" }
        };
        var rzp1 = new Razorpay(options);
        //rzp1.on('payment.failed',
        //    function (response) {
        //        //alert(response.error.code);
        //        //alert(response.error.description);
        //        //alert(response.error.source);
        //        //alert(response.error.step);
        //        //alert(response.error.reason);
        //        //alert(response.error.metadata.order_id);
        //        //alert(response.error.metadata.payment_id);
        //        window.location.href = 'fail';
        //    });
        document.getElementById('btnPay').onclick = function (e) {
              if ($("#terms").prop("checked") == false) {
                $('#errorTerms').text('Please select the Checkbox.');
                return false;
            }
            else { $('#errorTerms').text(''); }
            //$('#dvPaybutton').css('display', 'none');
            //$('#dvMessage').css('display', 'block');
            rzp1.open(); e.preventDefault();
        }
    </script>

    <script>
        function abc() {
            var isValid = true;
            $('#dvRegistration input[type="text"]').not("#txtnotes").each(function () {
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
            $('#dvRegistration input[type="password"]').each(function () {
                if ($.trim($(this).val()) == '') {
                    isValid = false;
                    $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                    //$("#txtMiddleName").css({ "border": "", "box-shadow": "" });
                }
                else {
                    $(this).css({ "border": "", "box-shadow": "" });
                }
            });
            var Email = $("#txtRegistrationEmailId").val();
            var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            if (Email != '') {
                if (!Email.match(emailExp)) {
                    $('.errorRegistrationEmailId').text('Invalid Email Id');
                    return false;
                }
            }
            if ($("#terms").prop("checked") == false) {
                $('#errorTerms').text('Please select the Checkbox.');
                return false;
            }
            else { $('#errorTerms').text(''); }
            //var Password = $("#txtRegistrationPassword").val();
            //var PasswordExp = /^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$/;
            //if (Password != '') {
            //    if (!Password.match(PasswordExp)) {
            //        SetDialogMessage('At least one upper case </br>At least one lower case </br> At least one digit</br> At least one special character</br> Minimum eight in length', 'false');
            //        // $('.errorRegistrationPassword').text('At least one upper case, At least one lower case, At least one digit, At least one special character, Minimum eight in length');
            //        return false;
            //    }
            //}
            if (isValid == false) {
                // e.pre
            }
            else {
                var user = {};
                user.FName = $("#txtFName").val();
                user.LName = $("#txtLName").val();
                user.Gender = $("#ddlGender option:selected").val();
                user.Address = $("#txtAddress").val();
                user.Country = $("#ddlCountry").val();
                user.State = $("#ddlState").val();
                user.City = $("#txtCity").val();
                user.Zip = $("#txtZip").val();
                user.PhoneNo = $("#txtPhoneNo").val();
                user.EmailId = $("#txtRegistrationEmailId").val();
                user.Password = $("#txtRegistrationPassword").val();
                user.notes = $("#txtnotes").val();
                $("#Register").css("display", "none");
                $("#RegisterLoding1").css("display", "block");
                $.ajax({
                    type: "POST",
                    url: "../checkout.aspx/SaveUser",
                    data: '{user: ' + JSON.stringify(user) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var userId = response.d;
                        if (userId == -2) {
                            //  SetDialogMessage('This Email Id is already exist', 'false');
                            $("#Register").css("display", "block");
                            $("#RegisterLoding1").css("display", "none");
                        }
                        else {
                            $("#RegisterLoding1").css("display", "none");
                            $("#orderid").css("display", "block");
                            $("#btnPay").css("display", "block");
                        }
                    }
                });
            }
        }
    </script>
                        

</asp:Content>
