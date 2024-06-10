<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="pay-for-order.aspx.cs" Inherits="Global_IT_Success.pay_for_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table td, .table th {
    padding:  10px !important;
    vertical-align: middle !important;
    border-top: 1px solid #dee2e6;
}
        .table td p{
            margin-bottom:0px !important;
        }
        .btn:hover {
    background-color: #4d84e2;
    color: #fff !important;
}
        input[type=radio] {
    box-sizing: border-box;
    padding: 0;
    margin-left: 20px !important;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
        $(document).ready(function () {
            disableBackButton();
        });
    </script>
    <asp:HiddenField ID="hdnAmount" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnEmailId" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnPhoneNo" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnName" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnOrderID" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnCurrency" runat="server" ClientIDMode="Static" />
    <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4>Pay For Order</h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li class="active">Pay For Order</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="about-page">
        <div class="container">
            <div class="row bill-box">
                <div class="col-md-6">
                    <div class="billing">
                        <h4 class="mb-4">Pay For Order</h4>
                        <div class="form-row" id="dvRegistration">
                            <div class="form-group col-md-12" style="display:none;">
                                <label><b>PAYMENT BY</b></label>
                                    <input id="Cashfree" type="radio" value="Cashfree" name="option" style="position: inherit" checked>
                                    Cashfree
                                               <input id="Razorpay" type="radio" value="Razorpay" name="option" style="position: inherit">
                                    Razorpay
                            </div>

                            <table class="table billing" style="background-color: #fff;">
                            <%--<thead>
                                <tr>
                                    <th>PRODUCT NAME</th>
                                    <th>SUBTOTAL</th>
                                </tr>
                            </thead>--%>
                            <tbody>
                                
                                        <tr>
                                            <td><b>ORDER NUMBER</b></td>
                                            <td><p class="order" id="pOrderNumber" runat="server" clientidmode="Static"></p></td>
                                        </tr>
                                <tr>
                                    <td><b>DATE</b></td>
                                    <td><p class="order" id="pDate" runat="server"></p></td>
                                </tr>
                                    
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td>
                                        <b>TOTAL</b>
                                    </td>
                                    <td>
                                        <p class="order" id="pTotal" runat="server" clientidmode="Static"></p>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                           
                            <div class="form-group col-md-12">
                                <div id="dvRazorpay" style="display: none;">
                                    <button class="btn add-btn" id="rzp-button1">Pay</button>
                                    <a class="btn add-btn" href="view-cart">Cancel Payment & back to cart</a>
                                    <br />
                                    <div class="msg">* To pay from any mode click on pay button</div>
                                </div>
                                <div id="dvCashfree">
                                    <asp:Button class="btn add-btn" ID="btnPay" runat="server" Text="Pay" OnClick="btnPay_Click" />
                                    <a class="btn add-btn" href="view-cart">Cancel Payment & back to cart</a>
                                    <br />
                                    <div class="msg">* To pay from any mode click on pay button</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <%-- <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var options = {
            "key": "rzp_live_d89ndsYBGDszw9", // Enter the Key ID generated from the Dashboard   
            "amount": document.getElementById("hdnAmount").value, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise    
            "currency": document.getElementById("hdnCurrency").value,
            "name": "Rossey Royal",
            // "description": "Test Transaction",
            "image": "./assets/images/logo.png",
            "order_id": document.getElementById("hdnOrderID").value, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1    
            "handler": function (response) {
                $("body").append('<div id="overlay" style="background-color:grey;position:absolute;top:0;left:0;height:100%;width:100%;z-index:999"><p style="font-size:30px; text-align:center; margin:150px; color:#FFF;">Please Wait for some time .....</p></div>');
                var order = {};
                order.razorpay_payment_id = response.razorpay_payment_id;
                order.razorpay_order_id = document.getElementById("hdnOrderID").value;
                order.razorpay_signature = response.razorpay_signature;
                $.ajax({
                    type: "POST",
                    url: "pay-for-order.aspx/SaveUser",
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
                "name": document.getElementById("hdnName").value,
                "email": document.getElementById("hdnEmailId").value,
                "contact": document.getElementById("hdnPhoneNo").value
            },
            "method": {
                "EMI": "0",
                "paylater": "0",
                "credit_card": "0"
            },
            "theme": { "color": "#b4590e" }
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
        document.getElementById('rzp-button1').onclick = function (e) {
            rzp1.open(); e.preventDefault();
        }
    </script>--%>
</asp:Content>
