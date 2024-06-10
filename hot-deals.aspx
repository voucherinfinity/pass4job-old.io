<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hot-deals.aspx.cs" Inherits="Global_IT_Success.hot_deals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h1 style="color:#da9b20;">Hot Deals</h1>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li class="active">Hot Deals</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <section class="course-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                    <div class="heading">
                        <div class="heading-section">
                            <div class="head-main">
                                <div class="bdr-left"></div>
                                <h2>HOT DEALS</h2>
                                <div class="bdr-right"></div>
                            </div>
                            <p>Exam Voucher Specials - Discounted Early Expiring Exam Test Vouchers.<br />Early Expiring Exam Voucher specials save you money!</p>

                        </div>

                    </div>
                </div>
                <div class="col-md-12" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                    <div class="vendor-holder">
                        <div class="row">
                        <asp:Repeater ID="rptVoucherCategory" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-6 col-xl-6 col-md-6 col-sm-6 col-6 slideInRight animated clearfix animated">
                                    <div class="course-holder ">
                                        <div class="cr-box d-flex  mb-3">
                                            <div class="course-img">
                                                <a href="./exam-voucher/<%#Eval("URL")+"-hotdeal"%>">
                                                    <img src='<%#Eval("ImageUrl","./images/{0}") %>' alt="<%#Eval("Name")%>" width="115px" height="76px">
                                                </a>
                                            </div>
                                            <div class="course-text">
                                                <h4><img src="./img/hotdeal.gif" alt="hot deal image" width="40px" height="30px"/></h4>
                                                <a href="./exam-voucher/<%#Eval("URL")+"-hotdeal"%>">
                                                    <h5 style="color:white;"><%#Eval("Name")%></h5>
                                                </a>
                                              
                                            </div>
                                            <div class="vendr">
                                                <img src='<%#Eval("VenderImage","./images/{0}") %>' alt='kubernetes vendor image' width="162px" height="93px"/>
                                            </div>
                                        </div>
                                        <div class="course-footer d-flex ">
                                            <div class="course-price d-flex ">
                                                <div class="text-center">
                                                    <h6>Actual Price</h6>
                                                    <p><span class="cou-price"><%#Eval("HotMainPrice").ToString()=="" ? "" : Eval("Currency")%>  <%#Math.Round(Convert.ToDecimal(Eval("HotMainPrice"))+(Convert.ToDecimal(Eval("HotMainPrice")) * 18/100)) %></span></p>
                                                </div>
                                                <div class="text-center">
                                                    <h6>Our Price</h6>
                                                    <p><%#Eval("Currency")%> <%#Math.Round(Convert.ToDecimal(Eval("HotDiscountedPrice")))+ Math.Round((Convert.ToDecimal(Eval("HotDiscountedPrice")) * 18/100)) %></p>
                                                </div>
                                                <%--<div class="text-center">
                                                    <h6>Voucher Validity</h6>
                                                    <p><%#Eval("ExpiryDate")%></p>
                                                </div>--%>
                                            </div>
                                            <div class="cart-btn">
                                                <div class="button" runat="server" visible='<%#Eval("stock").ToString()=="I" ? true : false %>'>
                                                    <asp:LinkButton ID="lbAddToCart" class="add-btn" OnClick="lbAddToCartClick" CommandArgument='<%#Eval("code") + ", " + Eval("Name") + " ," + Eval("ImageUrl") + "," + Convert.ToDecimal(Eval("HotDiscountedPrice")) + ",1" + ","+ Eval("Currency")+ ","+ Convert.ToDecimal(Eval("HotDiscountedPrice")) %>' runat="server" CommandName="Add"> Add to Cart</asp:LinkButton>

                                                </div>
                                                <div class="add-btn" style="background-color: red; padding: 8px 48px;" runat="server" visible='<%#Eval("stock").ToString()=="O" ? true : false %>'>
                                                    Out of Stock
                                                </div>
                                            </div>
                                        </div>
                                        <%-- <div class="cr-box ">
                                                <div class="course-text2">
                                                    <h4 style="margin-left: -13px; margin-top: 20px;">*The above-quoted prices are inclusive of taxes</h4>
                                                </div>
                                            </div>--%>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                            </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
