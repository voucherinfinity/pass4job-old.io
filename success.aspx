<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="Global_IT_Success.success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>success</title>
    <style>
        .wrapper-1 {
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .wrapper-2 {
            padding: 30px;
            text-align: center;
        }

        h1 {
            font-family: 'Kaushan Script', cursive;
            font-size: 4em;
            letter-spacing: 3px;
            color: #35b729;
            margin: 0;
            margin-bottom: 20px;
        }

        .wrapper-2 p {
            margin: 0;
            font-size: 1.3em;
            color: #6f6f6f;
            font-family: 'Source Sans Pro', sans-serif;
            letter-spacing: 1px;
        }

        .go-home {
            color: #fff;
            background: #5892FF;
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
                    font-weight: 600;
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
                height: initial;
                max-width: 735px;
                margin: 0 auto;
                margin-top: 200px;
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
                <img src="./images/th-right.png" />
                <h1>Thank You!</h1>
                <p>
                    You will get the voucher code with in a day.
                </p>
                <p>If you didn't get voucher code with in the given /limited time period, please contact us.</p>
                <a href="./client-panel" class="go-home">go on dashboard
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
