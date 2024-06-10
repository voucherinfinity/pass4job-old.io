<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="pte-exam.aspx.cs" Inherits="Pass4Job.pte_exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        .detailing {
            padding: 2%;
        }

        #meetings {
            padding: 2%;
        }
         #blink {
            animation: blink 1.5s linear infinite;
        }

        @keyframes blink {
            0% {
                opacity: 0;
            }

            50% {
                opacity: 0.7;
            }

            100% {
                opacity: 0;
            }
        }
    </style>

     <section class="section main-banner" id="top" data-section="section1" style="height:480px">
        <img src="https://pass4job.com/images/pte-exam.webp" alt="bnr" />

        <div class="video-overlay header-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="caption" style="top: 59%;">
                            <h6>No.1 Platform For</h6>
                            <h2 id="blink">Discounted PTE Exam Vouchers  </h2>
                            <p style="max-width: 837px;">The Pearson Test of English (PTE) exam voucher is a 12-digit alphanumeric code valid for paying the PTE Academic fee.</p>
                            <br />
                             <div style="background-color: brown;padding: 12px 10px 12px 11px;width: 364px;">
                             <p style="max-width: 437px; font-size: 16px;"><b>Actual Price:&nbsp;</b>  ₹15,900 (Including GST)</p>
                            <p style="max-width: 437px; font-size: 16px;"><b>Our price:&nbsp;</b>  ₹14,900 (Including GST)</p>
                            <p style="font-size: 16px;"><b>Save:&nbsp;</b>   ₹1,000 </p>
                             </div>
                            <div class="main-button-red">
                                <div class="scroll-to-section">
                                    <a href="https://pass4job.com/pte-checkout">Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="detailing">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="." style="color: #f5a425;">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">PTE Exam Voucher</li>
            </ol>
            <br />
           
                    <div class="row flex-row-reverse">
                        <div class="col-lg-9">
                            <h5> About Us </h5><br />
                            <p>
                                To pursue your career abroad, we are committed to provide excellent and affordable services. With us you can grab PTE exam vouchers at nominal price along with booking facility.<br />
                                With us you can save huge money on PTE exam fees. Our discount exam vouchers will help you to book exams at a lower price and attain your envisioned goals easily.
                            </p><br />
                             <h5>Why take PTE Exam Voucher</h5><br />
                                <ul>
                                    <li>⦿ Authorized reseller</li>
                                    <li>⦿ Secure Payment</li>
                                    <li>⦿ Lowest Price</li>
                                    <li>⦿ 24x7 help desk service</li>
                                </ul>
                            <br />
                            <h5> PTE Exam Voucher </h5><br />
                            <p>The Pearson Test of English (PTE) exam voucher is a 12-digit alphanumeric code valid for paying the PTE Academic fee.</p><br />
                            <h5>Benefit of Exam Voucher: </h5><br />
                            <p>PTE voucher code helps to book a PTE exam at a lower price than the actual exam fee. The PTE voucher is itself a full payment for the exam. </p><br />
                            <br>
                        </div>
                        <div class="col-lg-3">

                            <img src="https://pass4job.com/images/pte-exam-logo.png" alt="pte exam logo" style="background: #f0f8ff; border: 5px solid #a0a2a5; height: 169px; box-shadow: rgba(0, 0, 0, 0.35) 0px -50px 36px -28px inset;">
                            <div class="right-info" style="position: sticky; top: 0px;">
                                <br>
                                <div style="border: 5px solid #a0a2a5; padding: 13px; text-align: center; box-shadow: rgba(0, 0, 0, 0.35) 0px -50px 36px -28px inset;">
                                    <div class="row" id="contact-form">
                                        <div id="SuccessMessage" style="display: none; background-color: #3CF; color:white; width:310px;">  <p style="font-size: 14px; color: #07294d;">Your message has been sent successfully.</p> </div>
                                        <div class="col-md-12">
                                            <h4 class="title">Enquire Now</h4>
                                            <br />
                                            
                                          
                                        </div>
                                       
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyName" CssClass="form-control" runat="server" Placeholder="Full Name" ClientIDMode="Static"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyEmail" CssClass="form-control" runat="server" Placeholder="Email ID" ClientIDMode="Static"></asp:TextBox><br />
                                                <span class="errorEmailId" style="display: none; color: red;"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtReplyPhone" runat="server" CssClass="form-control" Placeholder="Phone Number" ClientIDMode="Static" onkeypress='return event.charCode >= 48 && event.charCode <= 57' MaxLength="15"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                                <asp:TextBox ID="txtMessage" CssClass="form-control" runat="server" Placeholder="Message" ClientIDMode="Static"></asp:TextBox><br />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-form">
                                             <center>   <div id="submitloding" class="btn btn-primary" style="display: none; color: white; width:121px; background-color: #f5a425; border-color: #f5a425;;"><i class="fa fa-circle-o-notch fa-spin"></i>Loading..</div>
                                                <button id="btnsubmit" class="btn btn-primary" type="button" style="background-color: #f5a425; border-color: #f5a425;" onclick="btnSubmit();">
                                                    Submit Now
                                                </button></center>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
              <a style="position: fixed; bottom: 40px; z-index: 99; margin-left: -115px;" href="https://api.whatsapp.com/send?phone=7428524284" target="_blank" title="Top" role="button">
                <img alt="chat image" src="../images/chat.png" width="68px" height="68px"></a>
        </div>
        <script>
            function btnSubmit() {
                var isValid = true;
                $('#contact-form input[type="text"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        $(this).css({ "border": "1px solid red", "box-shadow": "rgba(113, 113, 113, 0.73) 1px 0px 5px;" });
                        isValid = false;
                    }
                    else {
                        $(this).css({ "border": "", "box-shadow": "" });
                    }
                });
                var Email = $("#txtReplyEmail").val();
                var emailExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
                if (Email != '') {
                    if (!Email.match(emailExp)) {
                        $(".errorEmailId").css({ "display": "block" });
                        $('.errorEmailId').text('Invalid Email Id');
                        return false;
                    } else { $(".errorEmailId").css({ "display": "none" }); $('.errorEmailId').text(''); }
                }
                if (isValid == false) {

                    // e.pre
                }
                else {
                    var user = {};
                    user.name = $("#txtReplyName").val();
                    user.email = $("#txtReplyEmail").val();
                    user.PhoneNo = $("#txtReplyPhone").val();
                    user.Message = $("#txtMessage").text();
                    $("#btnsubmit").css("display", "none");
                    $("#submitloding").css("display", "block");
                    $.ajax({
                        type: "POST",
                        url: "../course-details.aspx/SentMailfromCoursePage",
                        data: '{user: ' + JSON.stringify(user) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            var userId = response.d;
                            if (userId == true) {
                                $("#btnsubmit").css("display", "block");
                                $("#submitloding").css("display", "none");
                                $('#txtReplyName').val('');
                                $('#txtReplyEmail').val('');
                                $('#txtReplyPhone').val('');
                                $('#txtMessage').val('');
                                $("#SuccessMessage").css("display", "block");
                                $("#SuccessMessage").fadeOut(6000);
                            }
                            else {
                                alert("Somthing Wrong!");

                            }
                        }
                    });
                }
            }
        </script>
           <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6368928bb0d6371309cda558/1gh87ossd';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
        
    </section>

    <asp:HiddenField ID="hdnTitle" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="hdnExamName" runat="server" />

    
</asp:Content>
