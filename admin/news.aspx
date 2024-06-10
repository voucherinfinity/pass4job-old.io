<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="SLI.admin.news" %>
 <%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add News</h4>
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Posted Date</label>
                                    <asp:TextBox ID="txtDate" runat="server" placeholder="DD-MM-YYYY" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>News Title</label>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Title" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Short Detail</label>
                                    <asp:TextBox ID="txtShortDetail" runat="server" placeholder="Short Detail" CssClass="form-control" Width="734px" Height="100px" TextMode="MultiLine" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Long Detail</label>
                                    <FTB:FreeTextBox ID="txtLongDetail" runat="server" Width="734px" Height="200px"> </FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                      <%--  <script>
                            CKEDITOR.replace('txtLongDetail');
                        </script>--%>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <span class="update-t">Update </span>
                <p class="text-muted">Lorem Ipsum is simply dummy text of the printing. </p>
                <asp:Button ID="btnsubmit" runat="server" Text="Update News" CssClass="btn btn-info btn-fill" OnClick="btnsubmit_Click" />
                <hr>
                <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
