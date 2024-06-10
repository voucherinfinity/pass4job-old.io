﻿<%@ Page Language="C#" AutoEventWireup="True" Inherits="amountpage" CodeBehind="amount.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
<head id="head" runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>Payment Form</title>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <link rel="icon" href="images/favicon.png" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
   <%-- <link href="../css/check.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   

    <script type="text/javascript">
        function SetDialogMessage(meesage, sucess) {
            var dvMessageDisplay = $('#<%=dvMessage.ClientID %>');
                var dvSuccess = $('#<%=dvSuccess.ClientID %>');
                var dvError = $('#<%=dvError.ClientID %>');
                var dvSucessMessage = $('#<%=dvSucessMessage.ClientID %>');
                var dvErrorMessage = $('#<%=dvErrorMessage.ClientID %>');
                var dvMessageSucess = $('#<%=dvMessageSucess.ClientID %>');
                var dvMessageError = $('#<%=dvMessageError.ClientID %>');
            dvSuccess.hide();
            dvError.hide();
            dvSucessMessage.hide();
            dvErrorMessage.hide();
            dvMessageDisplay.show();
            if (sucess == 'true') {
                dvSuccess.show();
                dvSucessMessage.show();
                dvMessageSucess.html(meesage);
            }
            else {
                dvError.show();
                dvErrorMessage.show();
                dvMessageError.html(meesage);
            }

            dvMessageDisplay.dialog({
                hide: "puff",
                show: "puff",
                modal: true,
                dialogClass: 'fixed-dialog'
            });
        }
    </script>

</head>
<style>
    .fixed-dialog {
        position: fixed;
    }

    .ui-dialog-titlebar-close, .fa fa-times {
        background: url(../images/ui-icons_444444_256x240.png);
        background-repeat: no-repeat;
        background-position: -93px -126px;
        border: none;
    }

    .ui-widget-header {
        border: none;
        background: none;
    }

    .col-md-12 {
        MARGIN-BOTTOM: 12PX;
    }

    .validate-input {
        position: relative;
    }

    .wrap-input100 {
        width: 100%;
        position: relative;
        border: 1px solid #e6e6e6;
        border-radius: 13px;
        padding: 10px 30px 9px 22px;
        margin-bottom: 5px;
    }

    .card1 {
        background: #ffffff;
        min-height: 50px;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
        position: relative;
        margin-bottom: 30px;
        -webkit-border-radius: 2px;
        -moz-border-radius: 2px;
        -ms-border-radius: 2px;
        border-radius: 2px;
    }

    .change {
        COLOR: white;
        border: 1px solid rgba(0,0,0,0.4);
        border-radius: 0.3em;
        background: #3e3e3e;
    }

    .login1 {
        /* background: -webkit-linear-gradient(bottom, #fdfdfd, #4b9479); */
        padding-left: 0;
        min-height: 100vh;
        overflow-x: hidden;
        BACKGROUND-COLOR: #f1f1f1;
    }

    .m-b--20 {
        margin-bottom: 19px;
    }

    .input-group {
        width: 100%;
        margin-bottom: 11px;
    }

    .login-page .login-box a:hover {
        /* text-decoration: underline; */
        color: #565656;
    }

    h4, .h4 {
        font-size: 16px;
        FONT-FAMILY: DOMINE;
    }

    .login100-form-title {
        FONT-FAMILY: DOMINE;
        font-size: 29px;
        color: #484141;
        line-height: 1.2;
        text-align: center;
        display: block;
        position: absolute;
        width: 100%;
        top: 0;
        left: 0;
        /* background-color: #25483c; */
        padding-top: 50px;
        padding-bottom: 13px;
    }

    .btn:not(.btn-link):not(.btn-circle) {
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.16), 0 2px 10px rgba(0, 0, 0, 0.12);
        -webkit-border-radius: 2px;
        -moz-border-radius: 2px;
        -ms-border-radius: 2px;
        outline: none;
        border-radius: 3px;
        border: none;
        font-size: 14px;
        width: 118px;
        /* background-color: #3e8e73; */
        color: white;
        display: flex;
        justify-content: center;
        /* align-items: center; */
        padding: 0px 20px;
        width: 87%;
        height: 40px;
        background-color: #76df3e;
        border-radius: 25px;
        font-family: 'Khand',sans-serif;
        font-size: 20px;
        color: #fff;
        MARGIN-LEFT: 33PX;
        font-weight: 600;
    }

        .btn:not(.btn-link):not(.btn-circle):hover {
            border-radius: 3px;
            box-shadow: 2px 10px 20px #e6e6e6;
            width: 87%;
            height: 40px;
            border-radius: 25px;
            background-color: #5bab31;
            color: black;
        }
</style>
<body class="login-page">

    <div id="dvMessage" runat="server" style="display: none;">
        <div id="dvSuccess" runat="server" class="check_mark">
            <div class="sa-icon sa-success animate">
                <span class="sa-line sa-tip animateSuccessTip"></span>
                <span class="sa-line sa-long animateSuccessLong"></span>
                <div class="sa-placeholder"></div>
                <div class="sa-fix"></div>
            </div>
        </div>
        <div id="dvError" runat="server" class="check_mark1">
            <div class="sa-icon1 sa-success1 animate1">
                <span class="sa-line1 sa-tip1 animateSuccessTip1"></span>
                <span class="sa-line1 sa-long1 animateSuccessLong1"></span>
                <div class="sa-placeholder1"></div>
                <div class="sa-fix1"></div>
            </div>
        </div>
        <p>
            <div id="dvSucessMessage" runat="server">
                <center>
                        <div id="dvMessageSucess" runat="server"></div>
                    </center>
                <center style="color: #76df3e;">Thank You</center>
            </div>

            <div id="dvErrorMessage" runat="server">
                <center>
                        <span style="color: red;">Sorry</span>,
                        <div id="dvMessageError" runat="server"></div>
                    </center>
            </div>
        </p>
    </div>

    <div class="login-box">
        <div class="col-md-12">


            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div class="card1" style="margin-top: 5%">
                    <div class="body" style="padding: 4PX 47PX 93PX 46PX; border: 2px solid #212529;">
                        <form runat="server" >
                            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="true">
                            </asp:ScriptManager>
                            <asp:UpdateProgress ID="updateProgress" runat="server">
                                <ProgressTemplate>
                                    <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                        <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/images/loader.gif" Height="200px" Width="200px" Style="border-width: 0px; position: fixed; top: 143px; left: 600px;" />
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <div class="col-md-3" style="float: right;">
                                        <asp:Button ID="Button3" runat="server" Text="Logout" OnClick="EditEndExam" class="btn btn-danger" Style="font-size: 17px; margin-left: 67px;" /></div>
                                    <div class="col-md-12" style="padding-bottom: 100PX;">
                                        <span class="login100-form-title">pass4job Payment Portal
                                        </span>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <h4>Order Id</h4>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox type="text" runat="server" ID="order_texbox" ReadOnly="true" class="wrap-input100 validate-input" placeholder="Enter Company Name" Style="padding: 8PX;" autocomplete="off">
                                                    </asp:TextBox>

                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <h4>Company Name</h4>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox type="text" runat="server" ID="company_textbox" class="wrap-input100 validate-input" placeholder="Enter Company Name" Style="padding: 8PX;" autocomplete="off">
                                                    </asp:TextBox>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <h4>Client Name</h4>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox runat="server" ID="client_textbox" class="wrap-input100 validate-input" placeholder="Enter Client Name" Style="padding: 8PX;" autocomplete="off">
                                                    </asp:TextBox>

                                                </div>
                                                <asp:RequiredFieldValidator runat="server" ID="clientreqd" Display="Dynamic" ValidationGroup="b1" ControlToValidate="client_textbox" ErrorMessage="Client Name is Required!" ForeColor="Red" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <h4>Email</h4>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox runat="server" ID="email_textbox" type="text" class="wrap-input100 validate-input" placeholder="Enter Email ID" Style="padding: 8PX;" autocomplete="off">
                                                    </asp:TextBox>

                                                </div>
                                                <asp:RequiredFieldValidator runat="server" ID="emailreqd" Display="Dynamic" ValidationGroup="b1" ControlToValidate="email_textbox" ErrorMessage="Email ID is Required!" ForeColor="Red" />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic"
                                                    runat="server" ErrorMessage="Please Enter Valid Email ID"
                                                    ControlToValidate="email_textbox"
                                                    ForeColor="Red"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                                </asp:RegularExpressionValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <h4>Amount</h4>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox runat="server" ID="amout_textbox" type="text" class="wrap-input100 validate-input" placeholder="Enter Amount" Style="padding: 8PX;" autocomplete="off">
                                                    </asp:TextBox>

                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">


                                        <div class="col-xs-12" style="text-align: CENTER; padding-top: 20px;">

                                            <asp:Button runat="server" ID="Send_Button" Text="Submit" value="Send" ValidationGroup="b1" class="btn btn-success" Style="background-color:#212529;" OnClick="Send_Button_Click"></asp:Button>

                                            <%--<asp:Label ID="Submitsuccess" runat="server" ></asp:Label>--%>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </form>
                    </div>
                </div>


            </div>
            <div class="col-md-3"></div>

        </div>
    </div>

</body>
</html>
