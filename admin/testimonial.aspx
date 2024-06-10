<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="testimonial.aspx.cs" Inherits="SLI.admin.testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add Testimonial</h4>
                    </div>
                    <div class="content">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Full Name" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Prfile</label>
                                    <asp:TextBox ID="txtProfile" runat="server" placeholder="Profile" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Detail</label>
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" Rows="5" placeholder="Decription" TextMode="MultiLine" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">

                <span class="update-t">Update </span>
                <p class="text-muted">Lorem Ipsum is simply dummy text of the printing. </p>
                <asp:Button ID="btnsubmit" runat="server" Text="Update Testimonial" CssClass="btn btn-info btn-fill" OnClick="btnsubmit_Click" />
                <hr>
                <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>
            </div>

        </div>
    </div>
</asp:Content>
