<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="Global_IT_Success.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
                font-size: 60px;
                color: #a9a9a9;
                cursor: pointer;
            }

                #rating-container > div.active,
                #rating-container > div.selected {
                    color: #fcd000;
                }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdnName" runat="server" ClientIDMode="Static" />
    <section class="page-title">
        <!-- <div class="banner-bg"></div> -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12 slideInRight animated  animated" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: slideInRight;">
                    <div class="banner-content">
                        <h4>Review</h4>
                    </div>
                    <div class="page-header__menu">
                        <ul class="page-header__menu-list list-unstyled clearfix">
                            <li><a href="http://rosseyroyal.com">Home</a></li>
                            <li class="active">Review</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="about-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="billing">
                        <h4 class="mb-4">Write Review</h4>
                       <%--  <div id="dvMessageReview" style="display: none; color: red">Order Id Not Available !!</div>--%>
                        <hr />
                        <div class="form-row">
                          <%--  <div class="form-group col-md-8">
                                <label for="inputEmail4">Order ID</label>
                                <input id="txtOrderId" type="text" class="form-control" style="width: 250px" placeholder="Order ID">
                            </div>--%>

                            <div class="form-group col-md-8">
                                <label for="inputState">Review Rating </label>
                                <div>
                                    <div id="rating-container" style="margin-top: -22px; padding-top: 0px;">
                                        <div class="rating" data-rating="1" onclick="rate(1)">★</div>
                                        <div class="rating" data-rating="2" onclick="rate(2)">★</div>
                                        <div class="rating" data-rating="3" onclick="rate(3)">★</div>
                                        <div class="rating" data-rating="4" onclick="rate(4)">★</div>
                                        <div class="rating" data-rating="5" onclick="rate(5)">★</div>
                                    </div>
                                </div>
                            </div>
                             <input type="hidden" id="ratingId" >
                            <div class="form-group col-md-8" style="margin-top: -30px;">
                                <label for="inputCity">Comment</label>
                                <textarea cols="10" rows="2" class="form-control" id="txtComment"></textarea>
                            </div>

                        </div>
                        <button id="btnReview" type="button" class="btn btn-primary" onclick="review();">Submit Review</button>
                        <div id="ReviewLoding" class="btn btn-primary" style="display: none; width: 150px;"><i class="fa fa-circle-o-notch fa-spin"></i>&nbsp;Loading..</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        let ratingBox = document.querySelector("#rating-container");
        let ratings = document.querySelectorAll('.rating');
        // console.log(ratings.length);

        for (var i = 0; i < ratings.length; i++) {
            ratings[i].addEventListener("mouseenter", (e) => {
                activateRating(Array.from(ratings)
                    .indexOf(e.target));
            });
            ratings[i].addEventListener("mouseleave", (e) => {
                deactivateRating(Array
                    .from(ratings)
                    .indexOf(e.target));
            });
        }

        function activateRating(idx) {
            for (var i = 0; i <= idx; i++) {
                ratings[i].classList.add("active");
            }
        }

        function deactivateRating(idx) {
            for (var i = 0; i <= idx; i++) {
                ratings[i].classList.remove("active");
            }
        }

        function rate(num) {
            $("#ratingId").val(num);
            var idx = parseInt(num) - 1;
            for (var i = 0; i <= idx; i++) {
                ratings[i].classList.add("selected");
            }
            for (var i = idx + 1; i < ratings.length; i++) {
                ratings[i].classList.remove("selected");
            }
        }
    </script>

    <script>
        function review() {
            var isValid = true;
            if ($("#txtOrderId").val() == '') {
                $("#txtOrderId").attr('style', 'border: 1px solid red !important; width: 250px;');
                isValid = false;
            }
            else {
                $("#txtOrderId").css({ "border": "", "box-shadow": "" });
            }

            if (isValid == false) {
                // e.pre
            }
            else {
                var review = {};
                review.Name = $("#hdnName").val();
                review.Rating = $("#ratingId").val();
                review.Comment = $("#txtComment").val();
                $("#btnReview").css("display", "none");
                $("#ReviewLoding").css("display", "block");
                $.ajax({
                    type: "POST",
                    url: "feedback.aspx/SaveReview",
                    data: '{review: ' + JSON.stringify(review) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var userId = response.d;
                        if (userId == -1) {
                            //$("#dvMessageReview").css("display", "block");
                            //$("#dvMessageReview").fadeOut(6000);
                            $("#btnReview").css("display", "block");
                            $("#ReviewLoding").css("display", "none");
                        }
                        else {
                            $("#btnReview").css("display", "block");
                            $("#ReviewLoding").css("display", "none");
                            window.location.href = 'review';

                        }
                    }
                });
            }
        }
    </script>
</asp:Content>
