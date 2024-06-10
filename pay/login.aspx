<%@ Page Language="C#" AutoEventWireup="True" Inherits="login" CodeBehind="login.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>Login</title>

    <link href="css/bootstrap.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet" />

</head>
<style>
    .card1 {
        background: #ffffff;
        min-height: 50px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
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

    .m-b--20 {
        margin-bottom: 19px;
    }

    .input-group {
        width: 100%;
        margin-bottom: -7px;
    }

    .login-page .login-box a:hover {
        /* text-decoration: underline; */
        color: #565656;
    }

    .login100-form-title {
        font-family: 'khand',sans-serif;
        font-size: 24px;
        color: #fff;
        line-height: 1.2;
        text-align: center;
        display: block;
        position: absolute;
        width: 100%;
        top: 0;
        left: 0;
        background-color: #212529;
        padding-top: 20px;
        padding-bottom: 14px;
        font-weight: 600;
    }
</style>
<body class="login-page">

    <div class="login-box">
        <div class="col-md-12">



            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="card1" style="margin-top: 30%; width: 331px; height: 337px; border-top-left-radius: 22px; border-bottom-left-radius: 22px; border-bottom-right-radius: 22px; border-top-right-radius: 22px">
                        <div class="body" style="padding: 105PX 47PX 93PX 46PX;">
                            <form id="form1" runat="server">
                                <span class="login100-form-title" style="border-top-left-radius: 22px; border-top-right-radius: 22px;">pass4job
			
                                </span>
                                <div class="input-group">
                                    <div class="form-line">
                                        <asp:TextBox type="text" runat="server" ID="Textbox1" class="form-control" placeholder="Username" autofocus="autofocus" Style="padding: 8PX;" autocomplete="off">
                                        </asp:TextBox>

                                    </div>
                                    <asp:RequiredFieldValidator runat="server" ID="R1" ControlToValidate="Textbox1" ErrorMessage="Username is Required!!" ForeColor="Red" />

                                </div>
                                <div class="input-group">
                                    <div class="form-line">
                                        <asp:TextBox ID="Textbox2" runat="server" type="password" class="form-control" placeholder="Password" Style="padding: 8PX;">
                                        </asp:TextBox>


                                    </div>
                                    <asp:RequiredFieldValidator runat="server" ID="requserName" ControlToValidate="Textbox2" ErrorMessage="Password is Required!!" ForeColor="Red" />
                                </div>
                                <div class="row m-b--20" style="display:none;">

                                    <div class="col-xs-12 align-right">
                                        <a href="forgot-password.aspx">Forgot Password?</a>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-xs-12" style="text-align: CENTER;">

                                        <asp:Button runat="server" type="submit" name="btn_Signin" value="LOGIN" ID="btn_Signin" Text="LOGIN" class="btn waves-effect change" Style="background-color: #212529;" OnClick="btn_Signin_Click"></asp:Button>
                                        <div>
                                            <asp:Label ID="Label1" runat="server" ForeColor="red"></asp:Label>
                                        </div>
                                        <%-- <a href="amountpage.html"></a>--%>

                                        <span id="lbl_error_login" style="color: Red; font-size: 14px;"></span>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="col-md-3"></div>

        </div>
    </div>

</body>


</html>
