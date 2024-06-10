<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success-payment.aspx.cs" Inherits="Pass4Job.success_payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .wrapper-1 {
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .wrapper-2 {
            padding: 40px 10px;
            text-align: center;
        }

        h1 {
            font-family: 'Kaushan Script', cursive;
            font-size: 4em;
            letter-spacing: 3px;
            color: black;
            margin: 0;
            margin-bottom: 20px;
        }

        .wrapper-2 p {
            margin: 0;
            font-size: 18px;
            color: #6f6f6f;
            font-family: 'Source Sans Pro', sans-serif;
            letter-spacing: 1px;
        }

        .go-home {
            color: #fff;
            background: brown;
            border: none;
            padding: 10px 50px;
            margin: 30px 0;
            border-radius: 30px;
            text-transform: capitalize;
            box-shadow: 0 10px 16px 1px rgba(174, 199, 251, 1);
            display: inline-block;
        }

        .footer-like {
            margin-top: auto;
            background: #D7E6FE;
            padding: 6px;
            text-align: center;
        }

            .footer-like p {
                margin: 0;
                padding: 4px;
                color: #5892FF;
                font-family: 'Source Sans Pro', sans-serif;
                letter-spacing: 1px;
            }

                .footer-like p a {
                    text-decoration: none;
                    color: #5892FF;
                    font-weight: 300;
                }

        @media (min-width:360px) {
            h1 {
                font-size: 3.5em;
            }

            .go-home {
                margin-bottom: 20px;
            }
        }

        @media (min-width:600px) {
            .content {
                max-width: 1000px;
                margin: 0 auto;
            }

            .wrapper-1 {
                background: antiquewhite;
                height: initial;
                max-width: 735px;
                margin: 0 auto;
                margin-top: 0px;
                box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
            }
        }
    </style>
    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
        $(document).ready(function () {
            disableBackButton();
        });
    </script>
</head>
<body>
    <div class="content">
        <div class="wrapper-1">
            <div class="wrapper-2">
                <img src="https://pass4job.com/images/right.png" width="100px" height="100px" />
                <h1>Thank You!</h1>
                 <h3>Your Payment was successful with Pass4Job.<br>
                                You will get your voucher within 24 working hours.</h3><br />
                
                <p style="margin-top: 37px;">If you didn't get voucher code with in the given /limited time period, please <a href="https://pass4job.com/contact"> contact us.</a></p>
                <a href="https://pass4job.com/panel" class="go-home">go on panel
                </a>
            </div>
            <!-- <div class="footer-like">
            <p>Email not received?
             <a href="#">Click here to send again</a>
            </p>
          </div>-->
        </div>
    </div>
</body>
</html>
