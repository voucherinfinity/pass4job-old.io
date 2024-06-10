<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="voucher-category.aspx.cs" Inherits="Global_IT_Success.voucher_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #rating-container {
            display: inline-block;
            padding: 5px 10px;
            border-radius: 8px;
            margin: 0 auto
        }

            #rating-container > div {
                float: left;
                padding: 0 2px;
                font-size: 28px;
                color: #a9a9a9
            }

                #rating-container > div.active, #rating-container > div.selected {
                    color: #fcd000
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress2" runat="server">
        <ProgressTemplate>
            <div class="loader-fix">
                <img src="../images/loader.gif" alt="wait image" style="width: 60px; height: 60px;" class="loader-fix1" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section class="page-title">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                            <div class="banner-content">
                                <h1 id="hCName" runat="server" style="color: #da9b20;"></h1>
                                <div class="col-md-3 vald" id="dvValidity" runat="server" style="float: right; margin-bottom: 14px;">
                                    <u style="color: white;">Validity:</u><asp:Label ID="lblValidity" runat="server" Style="font-size: 18px;"></asp:Label>
                                </div>
                            </div>
                            <div class="page-header__menu">
                                <ul class="page-header__menu-list list-unstyled clearfix">
                                    <li><a href="http://rosseyroyal.com">Home</a></li>
                                    <li class="active" id="hCategoryName" runat="server"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="about-page">
                <div class="container">

                    <div class="row">
                        <div class="col-md-9">
                            <div class="row mb-3" style="justify-content: space-between; align-items: center; display: none;">
                                <div class="col-md-3">
                                    <div class="toolbox-left" runat="server" id="dvCategory">
                                        <div class="toolbox-item toolbox-sort">
                                            <div class="select-custom">
                                                <asp:DropDownList ID="ddCategoryType" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddCategoryType_SelectedIndexChanged">
                                                </asp:DropDownList>

                                            </div>
                                            <a href="#" class="sorter-btn" title="Set Ascending Direction"><span class="sr-only">Set Ascending Direction</span></a>
                                        </div>
                                    </div>
                                    <div class="toolbox-left" runat="server" id="dvHideName">
                                        <asp:Label ID="lblHideName" runat="server" CssClass="form-control comp"></asp:Label>
                                    </div>
                                </div>

                            </div>
                           <%-- <div class="row-mb-3" style="justify-content: space-between; align-items: center;">
                                <p style="margin-left: 16px;" id="Description" runat="server" clientidmode="Static">
                                </p>
                            </div>--%>
                            <div class="row">
                                <asp:Repeater ID="rptVoucherCategory" runat="server">
                                    <ItemTemplate>
                                        <%#Eval("reviewscript")%>
                                        <div class="col-md-4">
                                            <div class="course-hold mb-4">
                                                <div class="cr-box d-flex align-items-center mb-3">
                                                    <div class="course" visible='<%#Eval("ActBy").ToString()=="11" ? true : false %>' runat="server">
                                                        <a href="../exam-training/<%#Eval("URL")%>">
                                                            <img src='<%#Eval("ImageUrl","../images/{0}") %>' alt="<%#Eval("Name")%>" width="380px" height="218px">
                                                        </a>

                                                    </div>
                                                    <div class="course" visible='<%#Eval("ActBy").ToString()=="11" ? false : true %>' runat="server">
                                                        <a href="../exam-voucher/<%#Eval("URL")%>">
                                                            <img src='<%#Eval("ImageUrl","../images/{0}") %>' alt="<%#Eval("Name")%>" width="380px" height="218px">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="cr-box ">
                                                    <div class="course-text2" visible='<%#Eval("ActBy").ToString()=="11" ? true : false %>' runat="server">
                                                        <h4><%#Eval("VURL")%></h4>
                                                        <a href="../exam-training/<%#Eval("URL")%>">
                                                            <h5 style="height: 36px;"><%#Eval("Name")%></h5>
                                                        </a>
                                                    </div>
                                                    <div class="course-text2" visible='<%#Eval("ActBy").ToString()=="11" ? false : true %>' runat="server">
                                                        <h4><%#Eval("VURL")%></h4>
                                                        <a href="../exam-voucher/<%#Eval("URL")%>">
                                                            <h5 style="height: 36px;"><%#Eval("Name")%></h5>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="course-footer2 d-flex align-items-center">
                                                    <div class="course-price2 d-flex">
                                                        <div class="text-center">
                                                            <h6>Actual Price</h6>
                                                            <p><span class="cou-price"><%#Eval("MainPrice").ToString()=="" ? "" : Eval("Currency")%> <%# Math.Round(Convert.ToDecimal(Eval("MainPrice")))+ Math.Round((Convert.ToDecimal(Eval("MainPrice")) * 18/100)) %></span></p>
                                                        </div>
                                                        <div class="text-center">
                                                            <h6>Our Price</h6>
                                                            <p><%#Eval("Currency")%> <%# Math.Round(Convert.ToDecimal(Eval("DiscountedPrice")))+ Math.Round((Convert.ToDecimal(Eval("DiscountedPrice")) * 18/100)) %></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cr-box ">
                                                    <div class="course-text2">
                                                        <h4>*The above-quoted prices are inclusive of taxes</h4>
                                                    </div>
                                                </div>
                                                <div class="cart-b" runat="server" visible='<%#Eval("stock").ToString()=="I" ? true : false %>'>
                                                    <asp:LinkButton ID="lbAddToCart" class="add-btn2" OnClick="lbAddToCartClick" CommandArgument='<%#Eval("code") + ", " + Eval("Name") + " ," + Eval("ImageUrl") + "," + Convert.ToDecimal(Eval("DiscountedPrice")) + ",1" + ","+ Eval("Currency")+ ","+ Convert.ToDecimal(Eval("DiscountedPrice")) %>' runat="server" CommandName="Add"> Add to Cart</asp:LinkButton>
                                                </div>
                                                <div class="cart-b" style="background-color: red; padding: 8px 48px;" runat="server" visible='<%#Eval("stock").ToString()=="O" ? true : false %>'>
                                                    Out of Stock
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="cate-box  mb-3">
                                <h5>Categories</h5>
                                <ul>
                                    <asp:Repeater ID="rptVendors" runat="server">
                                        <ItemTemplate>
                                            <li><i class="icofont-arrow-right"></i><a href="../voucher/<%#Eval("VURL")%>"><%#Eval("Name")%></a> </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>

                            <div class="cate-box" style="display: none;">
                                <h5>Most Popular</h5>
                                <ul>
                                    <asp:Repeater ID="rptMostPopular" runat="server">
                                        <ItemTemplate>
                                            <li><i class="icofont-arrow-right"></i><a href="<%#Eval("Link") %>"><%#Eval("CourseName")%> </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <div class="cate-box">
                                <h5>Reviews</h5>
                                <asp:Repeater ID="rptRatingReview" runat="server">
                                    <ItemTemplate>
                                        <div class=" h-100 card-review">
                                            <div class="d-flex align-items-center">
                                                <img class="rounded-circle me-2 " src="../img/default-profile.webp" style="box-shadow: 0px 0px 4px 0px;" alt="default user listing page image" width="40px" height="40px" />
                                                <div class="d-flex flex-column justify-content-center align-items-start fs-5 lh-sm">
                                                    <b class="text-primary"><%#Eval("Name")%></b>
                                                    <div id="rating-container" style="margin-top: -22px; margin-left: -15px; padding-top: 20px;">
                                                        <div class='<%# Convert.ToInt32(Eval("Rating")) >= 1 ? "rating selected" : "rating" %>' data-rating="1">★</div>
                                                        <div class='<%# Convert.ToInt32(Eval("Rating")) >=2 ? "rating selected" : "rating" %>' data-rating="2">★</div>
                                                        <div class='<%# Convert.ToInt32(Eval("Rating")) >=3 ? "rating selected" : "rating" %>' data-rating="3">★</div>
                                                        <div class='<%# Convert.ToInt32(Eval("Rating")) >=4 ? "rating selected" : "rating" %>' data-rating="4">★</div>
                                                        <div class='<%# Convert.ToInt32(Eval("Rating")) >=5 ? "rating selected" : "rating" %>' data-rating="5">★</div>
                                                    </div>
                                                    <small class="text-muted"><%#Eval("PostedDate")%></small>
                                                </div>
                                            </div>
                                            <div class="card-boy ">
                                                <p class="card-text" style="padding-bottom: 15px; padding-left: 54px; font-size: 13px;"><%#Eval("Comment")%></p>
                                            </div>

                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <hr />
                                <a href="./review" class="more-post">View More Review</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
