<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="voucher-detail.aspx.cs" Inherits="Global_IT_Success.voucher_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .detail-text li {
            display: flex;
            list-style: none;
            margin-left: 15px;
        }

            .detail-text li span {
                margin-right: 10px;
            }

        #sticky {
            position: sticky;
            position: -webkit-sticky;
            height: 1px;
            top: 110px;
            /*display: flex;*/
            justify-content: center;
            align-items: center;
            /*color: #fff;*/
            margin-top: 0px;
        }

        .bt-center {
            position: relative;
        }

        #rating-container {
            /*   border: 1px solid rgba(222, 222, 222, 0.6); */
            display: inline-block;
            padding: 5px 10px;
            border-radius: 8px;
            margin: 0 auto;
            // text-shadow: 2px 2px 10px #000;
        }

            #rating-container > div {
                float: left;
                padding: 0px 2px;
                font-size: 28;
                color: #a9a9a9;
               // cursor: pointer;
            }

                #rating-container > div.active,
                #rating-container > div.selected {
                    color: #fcd000;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdnCode" runat="server" />
    <asp:HiddenField ID="hdnVenderid" runat="server" />
    <asp:HiddenField ID="hdnCurrency" runat="server" />
    <asp:HiddenField ID="hdnDiscountedPrice" runat="server" />
    <asp:HiddenField ID="hdnStockValue" runat="server" />
    <asp:HiddenField ID="hdnimageurl" runat="server" />
    <asp:HiddenField ID="hdnHot" runat="server" />
    <section class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4 id="hPName" runat="server"></h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li><a id="aCategoryName" runat="server">
                                <asp:Label ID="hCategoryName" runat="server" ClientIDMode="Static"></asp:Label></a></li>
                            <li id="hProductName" runat="server" class="active"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about-page">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="course-hold mb-4">
                        <div class="cr-box d-flex align-items-center">
                            <div class="course">
                                <asp:Image ID="imgCourse" runat="server" width="448px" height="297px" Style="border-radius: 7px;" />
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-wrappe" id="sticky" style="border: 1px solid #cbc7c7 !important; background: #fff; padding: 15px; min-height: 443px">
                        <h3 class="text-center text-uppercase">Enquire Now</h3>
                        <br />
                        <div class="form-box">
                            <div id="contact-form224">
                                <div class="text-center" id="SuccessMessage224" style="display: none; font-size: 14px; color: blue; text-transform: capitalize; font-weight: 600; line-height: 18px;">Thank you for your message! We will contact you as soon as possible.</div>
                                <div class="form-group">
                                    <input class="form-control" id="name224" type="text" placeholder="Full Name*">
                                </div>
                                <div class="form-group inputGroupContainer">
                                    <div class="input-group">
                                        <input class="form-control" id="email224" placeholder="Email ID*" type="text">
                                    </div>
                                    <span class="errorEmailId224" style="color: red;"></span>
                                </div>
                                <div class="form-group">
                                    <input placeholder="Phone No*" class="form-control" type="text" id="PhoneNo224" onkeypress='return event.charCode >= 48 && event.charCode <= 57' maxlength="15">
                                </div>
                                <div class="form-group">
                                    <input placeholder="Location*" class="form-control" type="text" id="Location224">
                                </div>
                                <div class="form-group">
                                    <textarea id="message224" class="form-control" style="height: 90px;" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="bt-center">
                                <button id="submit224" type="button" class="btn2 btn-primary" onclick="btnSubmit224();">Submit</button>
                                <div id="submitloding224" class="btn2 btn-primary" style="display: none; color: white; text-align: center; position: absolute; left: 0; top: 0; padding: 10px"><i class="fa fa-circle-o-notch fa-spin"></i>Loading..</div>
                            </div>

                            <script>
                                function btnSubmit224() {
                                    var isValid = true;
                                    $('#contact-form224 input[type="text"]').each(function () {
                                        if ($.trim($(this).val()) == '') {
                                            $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                                            isValid = false;
                                        }
                                        else {
                                            $(this).css({ "border": "", "box-shadow": "" });
                                        }
                                    });
                                    var Email = $("#email224").val();
                                    var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                                    if (Email != '') {
                                        if (!Email.match(emailExp)) {
                                            $('.errorEmailId224').text('Invalid Email Id');
                                            return false;
                                        } else { $('.errorEmailId224').text(''); }
                                    }

                                    if (isValid == false) {

                                        // e.pre
                                    }
                                    else {
                                        var user = {};
                                        user.title = $('#hName').text();
                                        user.name = $("#name224").val();
                                        user.email = $("#email224").val();
                                        user.PhoneNo = $("#PhoneNo224").val();
                                        user.Location = $("#Location224").val();
                                        user.message = $("#message224").val();
                                        $("#submit224").css("display", "none");
                                        $("#submitloding224").css("display", "block");
                                        $.ajax({
                                            type: "POST",
                                            url: "./voucher-detail.aspx/SentMail",
                                            data: '{user: ' + JSON.stringify(user) + '}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (response) {
                                                var userId = response.d;
                                                if (userId == true) {
                                                    //  $("#SuccessMessage224").css("display", "block");
                                                    $("#submit224").css("display", "inline-block");
                                                    $("#submitloding224").css("display", "none");
                                                    //  $("#SuccessMessage224").fadeOut(6000);
                                                    $('#name224').val('');
                                                    $('#email224').val('');
                                                    $('#PhoneNo224').val('');
                                                    $('#Location224').val('');
                                                    $('#message224').val('');
                                                    window.location.replace("./thanks.html");

                                                }
                                                else {
                                                    alert("Somthing Wrong!");
                                                }
                                            }
                                        });
                                    }
                                }

                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="cate-bo  mb-3">
                        <h4 id="hHotDeal" runat="server">
                            <img src="./img/hotdeal.gif" style="width: 40px; height: 30px;" alt="hot deal image" /></h4>
                        <h1 id="hName" runat="server"></h1>
                        <h5>
                            <asp:Label ID="Categoryname" runat="server"></asp:Label>
                            Price:- <span class="cou-price" id="MainPrice" runat="server"></span><span style="color: #18b7cd; margin-left: 8px; font-size: medium;" id="pTex">(*Including Tax)</span></h5>
                        <h4>Our Price:-  <span class="our-price" id="DiscountedPrice" runat="server"></span></h4>
                        <p id="pDiscount" class="discount" runat="server"></p>
                        <div class="detail-text">
                            <p id="Description" runat="server" clientidmode="Static"></p>
                            <p id="CommonLine" runat="server" clientidmode="Static"></p>
                        </div>
                    </div>
                    <div class="panel-group" id="accordionGroupClosed" role="tablist" aria-multiselectable="true">
                          <div class="panel2 panel-default" id="dvFaq" runat="server">
                            <div class="panel-heading" role="tab" id="headingFaq">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordionGroupClosed" href="#collapseCloseFaq" aria-expanded="true" aria-controls="collapseCloseFaq"><asp:Label ID="lblFaq" runat="server"></asp:Label> FAQ's
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseCloseFaq" class="panel-collapse collapse show" role="tabpanel" aria-labelledby="headingFaq">
                                <div class="panel-body">
                                    <p id="Faq" runat="server" clientidmode="Static"></p>
                                </div>
                            </div>
                        </div>

                        <div class="panel2 panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordionGroupClosed" href="#collapseCloseOne" aria-expanded="true" aria-controls="collapseCloseOne">Content
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseCloseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p id="Content" runat="server" clientidmode="Static"></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel2 panel-default" style="display: none;">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordionGroupClosed" href="#collapseCloseTwo" aria-expanded="false" aria-controls="collapseTwo">Reviews (<asp:Label ID="lblCountReview" runat="server" Text="0"></asp:Label>) 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseCloseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <asp:Repeater ID="rptReview" runat="server">
                                        <ItemTemplate>
                                            <div class=" h-100 card-review">
                                                <div class="d-flex align-items-center">
                                                    <img class="product-single-image" src="./images/re-user.png" alt="default user image" />
                                                    <div class="d-flex flex-column justify-content-center align-items-start fs-5 lh-sm">
                                                        <b class="text-primary"><%#Eval("Name")%></b>
                                                        <small class="text-muted"><%#Eval("PostedDate")%></small>
                                                    </div>
                                                </div>
                                                <div class="card-boy ">
                                                    <p class="card-text"><%#Eval("LongDetail")%></p>
                                                </div>
                                                <a href="#" class="stretched-link"></a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="number mb-3">
                        <span class="minus">-</span>
                        <asp:TextBox ID="lblCount" runat="server" min="1" MaxLength="4" name="quantity" value="1" size="4" ClientIDMode="Static"></asp:TextBox>
                        <span class="plus">+</span>
                    </div>
                    <div id="dvStock1" class="p-0" runat="server">
                        <asp:LinkButton ID="lbAddToCart" class="btn btn-sm btn-primary con-shop" OnClick="lbAddToCartClick" runat="server"> Add to Cart</asp:LinkButton>
                    </div>
                    <div id="dvStock2" class="product-action product-all-icons" runat="server">
                        <a class="btn btn-sm btn-primary con-shop" style="background-color: red; color: white;">Out of Stock</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="cate-box  mb-3">
                        <h5>Categories</h5>
                        <ul>
                            <asp:Repeater ID="rptVendors" runat="server">
                                <ItemTemplate>
                                    <li><i class="icofont-arrow-right"></i><a href="./voucher/<%#Eval("VURL")%>"><%#Eval("Name")%></a> </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>

                  <%--  <div class="cate-box  mb-3">
                        <h5>Most Popular</h5>
                        <ul>
                            <asp:Repeater ID="rptMostPopular" runat="server">
                                <ItemTemplate>
                                    <li><i class="icofont-arrow-right"></i><a href="<%#Eval("Link") %>"><%#Eval("CourseName")%> </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>--%>
                    <div class="cate-box">
                        <h5>Reviews</h5>
                        <asp:Repeater ID="rptRatingReview" runat="server">
                            <ItemTemplate>
                                <div class=" h-100 card-review">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle me-2 " src="./img/default-profile.webp" alt="default image" style="box-shadow: 0px 0px 4px 0px;"/>
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
                                        <p class="card-text" style="padding-bottom: 15px;padding-left: 54px; font-size: 13px;"><%#Eval("Comment")%></p>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:Repeater><hr />
                        <a href="./review" class="more-post">View More Review</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
     <script>
         $(document).ready(function () {
             $('.minus').click(function () {
                 var $input = $(this).parent().find('input');
                 var count = parseInt($input.val()) - 1;
                 count = count < 1 ? 1 : count;
                 $input.val(count);
                 $input.change();
                 return false;
             });
             $('.plus').click(function () {
                 var $input = $(this).parent().find('input');
                 $input.val(parseInt($input.val()) + 1);
                 $input.change();
                 return false;
             });
         });
     </script>
</asp:Content>
