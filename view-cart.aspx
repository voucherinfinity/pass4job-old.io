<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="view-cart.aspx.cs" Inherits="Global_IT_Success.view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4>View Cart</h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li class="active">View Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
             <div class="loader-fix" style="display:block;"> 
               <%--  <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="./images/loader.gif" class="loader-fix1"  /> --%>
                 <img src="./images/loader.gif" alt="wait image" style="width:60px; height:60px;" class="loader-fix1" /></div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section class="about-page">
                <div class="container">
                    <div class="row" runat="server" id="dvData">
                        <div class="col-12">
                            <div class="cart-table table-responsive"> 
                                <div id="dvmessage" style="display: none; background: cadetblue !important; padding: 10px; margin-bottom: 20px;" runat="server" clientidmode="Static">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="White"></asp:Label>
                                </div>
                                <script type="text/javascript">
                                    function HideLabel() {
                                        var seconds = 3;
                                        setTimeout(function () {
                                            document.getElementById("<%=dvmessage.ClientID %>").style.display = "none";
                                        }, seconds * 1000);
                                    };
                                </script>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Subtotal</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rptProduct" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <div class="cart-item">
                                                            <div class="item-img">
                                                                <asp:Image ImageUrl='<%# String.Concat("./Images/", Eval("ImageUrl")) %>' ID="img" runat="server" />
                                                            </div>
                                                            <asp:Label ID="lblCode" runat="server" Text='<%#Eval("Code")%>' Visible="false"></asp:Label>
                                                            <h6>
                                                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label></h6>
                                                        </div>
                                                    </td>
                                                    <td><%#Eval("Currency")%>
                                                        <asp:Label ID="lblDiscountedPrice" runat="server" Text='<%# String.Format("{0:f2}",DataBinder.Eval(Container.DataItem, "DiscountedPrice"))%>'></asp:Label></td>
                                                    <td>
                                                        <div class="number">
                                                            <asp:Button ID="btnMinus" CssClass="pls" Text="-" runat="server" CommandArgument='<%#Eval("code") %>' OnClick="btnMinusClick" />
                                                            <asp:TextBox ID="quantity" runat="server" min="1" Text='<%#Eval("Count")%>' OnTextChanged="quantity_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                            <asp:Button ID="btnPlus" CssClass="pls" Text="+" runat="server" CommandArgument='<%#Eval("code") %>' OnClick="btnPlusClick" />
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblCurrency" runat="server" Text='<%#Eval("Currency") %>'></asp:Label>
                                                        <asp:Label ID="lblSubTotal" runat="server" Text='<%#string.Format("{0:n2}",Eval("SubTotal")) %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:LinkButton ID="lbDelete" title="Remove product" CommandArgument='<%#Eval("code") %>' OnClick="lbDeleteClick" runat="server"><i class="icofont-ui-close" style="color: red;"></i></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <a href="http://rosseyroyal.com" class="btn btn-sm btn-primary con-shop">Continue Shopping</a>
                        </div>
                        <div class="col-md-4 ">
                            <div class="cart-summar">
                                <table class="table table-totals">
                                    <tfoot>
                                         <tr>
                                            <td>Total Price</td>
                                            <td style="text-align: right;" id="TotalAmount" runat="server"></td>
                                        </tr>
                                         <tr>
                                            <td>GST (18.00%)</td>
                                            <td style="text-align: right;" id="IGST" runat="server"></td>
                                        </tr>
                                        <tr><td></td><td><hr /></td></tr>
                                        <tr>
                                            <td>Grand Total</td>
                                            <td style="text-align: right;" id="GrandTotal" runat="server"></td>
                                        </tr>

                                    </tfoot>
                                </table>
                                <div class="checkout-methods">
                                    <a href="checkout" id="aIndia" runat="server" class="btn btn-block btn-sm btn-primary con-shop">Checkout</a>
                                    <a href="connect" id="aUSA" runat="server" class="btn btn-block btn-sm btn-primary con-shop">For Payment</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="trEmpty" runat="server" visible="false">
                        <center style="color: red">   No records found.</center>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
