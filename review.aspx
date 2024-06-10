<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="Global_IT_Success.review" %>

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
                        <h4 class="mb-4">All Reviews(<asp:Label ID="lblCountReview" runat="server" Text="0"></asp:Label>)</h4>
                        <hr />
                        <div class="panel-body">
                            <asp:Repeater ID="rptReview" runat="server">
                                <ItemTemplate>
                                    <div class=" h-100 card-review">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2 " src="./img/default-profile.webp" />
                                            <div class="d-flex flex-column justify-content-center align-items-start fs-5 lh-sm">
                                                <b class="text-primary"><%#Eval("Name")%></b>
                                                <div id="rating-container" style="margin-top: -22px; margin-left: -15px; padding-top: 20px;">
                                                    <div class='<%# Convert.ToInt32(Eval("Rating")) >= 1 ? "rating selected" : "rating" %>' data-rating="1" >★</div>
                                                    <div class='<%# Convert.ToInt32(Eval("Rating")) >=2 ? "rating selected" : "rating" %>' data-rating="2" >★</div>
                                                    <div class='<%# Convert.ToInt32(Eval("Rating")) >=3 ? "rating selected" : "rating" %>' data-rating="3" >★</div>
                                                    <div class='<%# Convert.ToInt32(Eval("Rating")) >=4 ? "rating selected" : "rating" %>' data-rating="4" >★</div>
                                                    <div class='<%# Convert.ToInt32(Eval("Rating")) >=5 ? "rating selected" : "rating" %>' data-rating="5" >★</div>
                                                </div>
                                                <small class="text-muted"><%#Eval("PostedDate")%></small>
                                            </div>
                                        </div>
                                        <div class="card-boy ">
                                            <p class="card-text"><%#Eval("Comment")%></p>
                                        </div>
                                       
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                        <hr />
                         <asp:LinkButton ID="lbtnAddReview" runat="server" class="btn btn-sm btn-primary" OnClick="btnlogin_Click">Add Review</asp:LinkButton>
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

        function activateRating(3) {
            for (var i = 0; i <= idx; i++) {
                ratings[i].classList.add("active");
            }
        }

        function deactivateRating(idx) {
            for (var i = 0; i <= idx; i++) {
                ratings[i].classList.remove("active");
            }
        }

       
    </script>
</asp:Content>
