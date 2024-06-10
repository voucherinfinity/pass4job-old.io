<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SLI.admin.Login" %>

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin-Login</title>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <style>
        body {
            background-color: #76df3e;
        }

        .login-box {
            width: 360px;
            margin: 13% auto;
            box-shadow: 0 0 24px 0 rgba(0,0,0,.06), 0 1px 0 0 rgba(0,0,0,.02);
        }

        .login-box-body {
            padding: 30px 35px 40px;
            border-radius: 4px;
            background: #fff;
        }

        p.login-box-msg.admin-login-heading {
            font-weight: 800;
            text-transform: uppercase;
            color: #3c4658;
            font-size: 24px;
            font-family: 'Khand', sans-serif;
            text-align: center;
        }

        .login-box-body .form-control {
            border: none;
            outline: none;
            box-shadow: none;
            background-color: rgb(236, 240, 246);
            padding: 19px 20px;
            font-weight: 400;
            color: #909cb1;
        }

        .login-box-body .btn {
            padding: 8px 0px;
            text-transform: uppercase;
            font-weight: 500;
            font-size: 15px;
        }

        .login-box-body P, .login-box-body a {
            margin: 0px;
            font-size: 14px;
            font-weight: 400;
        }

        .login-box-body a {
            color: #57b923;
        }
    </style>
</head>
<body style="background-image: url('https://www.pass4job.com/img/1.jpg'); background-size: cover;">
    <form id="form1" runat="server">
        <div class="login-box">
            <!-- <div class="login-logo"> 
</div> -->
            <div class="login-box-body text-center">
                <div class="text-center" >
                    <a href="https://localhost:4356/">
                        <img src="https://localhost:4356/assets/images/logo.png" class="mb-20" /></a>
                </div>
                <br />
               <%-- <div class="text-center">
                    <span id="lbl_message">Please login with your Email ID and Password</span>
                </div>--%>
                <div class="form-group">
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Enter your Username"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="LogIn" class="btn btn-success btn-block" OnClick="Button1_Click" />

                </div>
              <%--  <a href="ForgotPassword.aspx" class="">Forgot Password? </a>--%>
            </div>
            <!-- /.login-box-body -->
        </div>

    </form>
    <!-- jQuery -->
    <script src=".https://www.pass4job.com/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="https://www.pass4job.com/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="https://www.pass4job.com/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="https://www.pass4job.com/dist/js/sb-admin-2.js"></script>

</body>
</html>
