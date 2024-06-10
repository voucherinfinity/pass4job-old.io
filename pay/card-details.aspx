<%@ Page Language="C#" AutoEventWireup="True" Inherits="card_details" CodeBehind="card-details.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>Card Details</title>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
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
        margin-top: 2px;
    }

    .login-page .login-box a:hover {
        color: #565656;
    }

    img {
        vertical-align: middle;
        WIDTH: 39PX;
    }

    h4 {
        font-size: 16px;
        FONT-FAMILY: DOMINE;
        display: INLINE;
    }

    .login100-form-title {
        font-family: Domine;
        font-size: 21px;
        color: #fff;
        line-height: 1.2;
        display: block;
        position: absolute;
        width: 100%;
        top: 0;
        font-weight: 600;
        left: 0;
        background-color: #212529;
        padding-top: 10px;
        padding-bottom: 5px;
        padding-left: 49px;
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
        color: white;
        display: flex;
        justify-content: center;
        padding: 0px 20px;
        width: 87%;
        height: 40px;
        background-color: #76df3e;
        border-radius: 25px;
        font-size: 18px;
        color: #fff;
        MARGIN-LEFT: 20PX;
        font-weight: 600;
    }

        .btn:not(.btn-link):not(.btn-circle):hover {
            border-radius: 3px;
            box-shadow: none;
            width: 87%;
            height: 40px;
            background-color: #5bab31;
            color: black;
            font-size: 18px;
            border-radius: 25px;
            font-weight: 600;
        }

    .log {
        FONT-FAMILY: DOMINE;
        font-size: 18px;
        color: #2d2d2d;
        display: block;
        position: absolute;
        width: 100%;
        top: 70px;
        left: 35px;
    }

    .l {
        FONT-FAMILY: DOMINE;
        font-size: 18px;
        color: #2d2d2d;
        /* line-height: 0.2; */
        width: 100%;
        margin-top: 22PX;
        left: -10px;
    }

    label {
        display: inline-block;
        max-width: 100%;
        margin-bottom: 0px;
        font-weight: bold;
        margin-top: 8px;
    }
</style>

<body class="login1">

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
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="card1" style="margin-top: 5%; border: 1px solid #212529;">
                    <div class="body" style="padding: 134PX 47PX 756PX 46PX;">
                        <form runat="server" name="sign_in" id="sign_in">
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
                                    <span class="login100-form-title">Payment Form
                                    </span>
                                    <div class="col-md-12 log">
                                        <h3 style="font-size: 19PX;">Payment Summary</h3>

                                    </div>
                                    <div class="col-md-12" style="border: 1PX SOLID #eaeaea; padding: 13PX 2PX; box-shadow: 0 7px 11px rgba(0, 0, 0, 0.2);">
                                        <div class="col-md-12">
                                            <div class="col-md-6">
                                                <h4>Order Number</h4>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group">
                                                    <div class="">

                                                        <asp:Label ID="lblOrderNumber" runat="server"> </asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="col-md-6">
                                                <h4>Transaction Type</h4>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group">
                                                    <div class="">
                                                        <asp:Label ID="LblTransaction" runat="server" Text="Purchase"> </asp:Label>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="col-md-6">
                                                <h4>Amount</h4>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group">
                                                    <div class="">
                                                        <asp:Label ID="Lblnetamt" runat="server" Visible="false"> </asp:Label>
                                                        <asp:Label ID="Lblamt" runat="server"> </asp:Label>
                                                        <asp:TextBox type="text" runat="server" ID="amount_texbox" Visible="false" class="wrap-input100 validate-input" placeholder="Enter Your Amount" autocomplete="off">
                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 l">
                                        <h3 style="font-size: 19PX;">Billing Information</h3>
                                        <h5 style="font-size: 12PX;">Enter Your Payment Details Below</h5>
                                    </div>


                                    <div class="col-md-12" style="margin-top: 20px; border: 2px solid #ececec; padding: 22px;">
                                        <div class="col-md-12">
                                            <h4 style="margin-right: 96px;">Select Payment Method<span style="color: red; margin-left: 2px;">*</span></h4>
                                            <img src="amex.jpg"><img src="master.png"><img src="visa.png"><img src="discover.jpg">



                                            <div class="input-group">
                                                <div class="form-line">

                                                    <asp:DropDownList ID="DropDownList1" class="form-line" runat="server" Height="38px">
                                                        <asp:ListItem Value="0">--Select Your Option--</asp:ListItem>
                                                        <asp:ListItem Value="1">Visa</asp:ListItem>
                                                        <asp:ListItem Value="2">Maestro</asp:ListItem>
                                                        <asp:ListItem Value="3">Amex</asp:ListItem>
                                                        <asp:ListItem Value="4">Discover</asp:ListItem>

                                                    </asp:DropDownList>

                                                </div>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvType" runat="server" ControlToValidate="DropDownList1"
                                                    InitialValue="0" ErrorMessage="Select Payment Method" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>
                                        <div class="col-md-12">
                                            <h4>Card Holder Name<span style="color: red; margin-left: 2px;">*</span></h4>


                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox runat="server" ID="card_holder_textbox" type="text" class="wrap-input100 validate-input" placeholder="Enter Card Holder Name" Style="padding: 8PX;" autocomplete="off" />
                                                </div>
                                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="holdernamereqd" ControlToValidate="card_holder_textbox" ErrorMessage="Card Holder Name is Required!!" ForeColor="Red" />

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <h4>Card Number<span style="color: red; margin-left: 2px;">*</span></h4>


                                            <div class="input-group">
                                                <div class="form-line">
                                                    <asp:TextBox runat="server" ID="cardno_textbox" type="text" class="wrap-input100 validate-input" placeholder="xxxx xxxx xxxx xxxx" Style="padding: 8PX;" autocomplete="off" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="19" />
                                                </div>
                                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="Cardnumberreqd" ControlToValidate="cardno_textbox" ErrorMessage="Card Number is Required!!" ForeColor="Red" />


                                            </div>
                                        </div>
                                        <div class="col-md-12" style="margin-top: 12px; margin-left: -14px;">
                                            <div class="col-md-5">
                                                <h4>Expiration Date<span style="color: red; margin-left: 2px;">*</span></h4>



                                                <asp:TextBox runat="server" ID="exp_textbox" placeholder="MM" class="wrap-input100 validate-input" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="2" Style="padding: 8PX; width: 44%;" autocomplete="off" />


                                                <asp:TextBox runat="server" ID="exp_textbox1" placeholder="YYYY" class="wrap-input100 validate-input" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="4" Style="padding: 8PX; margin-top: 7px; width: 44%;" autocomplete="off" />
                                                <asp:RequiredFieldValidator runat="server" ID="reqdexp" ControlToValidate="exp_textbox" ErrorMessage="Expiration Date is Required!" ForeColor="Red" />

                                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="reqdexp2" ControlToValidate="exp_textbox1" ErrorMessage="" ForeColor="Red" />

                                            </div>

                                            <div class="col-md-7">
                                                <h4>Card Verification Data(CVD)<span style="color: red; margin-left: 2px;">*</span></h4>



                                                <asp:TextBox runat="server" ID="cvv_textbox" type="text" class="wrap-input100 validate-input" placeholder="xxxx" Style="padding: 8PX; margin-top: 7px; width: 84%;" TextMode="Password" autocomplete="off" MaxLength="4" onkeypress='return event.charCode >= 48 && event.charCode <= 57' />



                                            </div>
                                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="cvv_reqd" ControlToValidate="cvv_textbox" ErrorMessage="CVV is Required!!" ForeColor="Red" />

                                        </div>
                                        <div class="col-md-12">

                                            <asp:Button runat="server" ID="buttonsubmit" Text="Pay" type="submit" value="Send" class="btn  waves-effect change" Style="background-color: #212529;" OnClick="buttonsubmit_Click" />
                                            <%--  <asp:Label ID="Lblsbmt" runat="server" Text="" ForeColor="Red"></asp:Label>--%>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </form>

                    </div>


                </div>


            </div>
        </div>
    </div>

</body>
</html>
