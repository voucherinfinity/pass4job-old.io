<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="add-blog.aspx.cs" Inherits="SLI.admin.add_blog" %>
 <%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add Blog</h4>
                        
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Blog Name</label>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Blog Name" CssClass="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ValidationGroup="vaild" ErrorMessage="required" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Short Detail</label>
                                    <asp:TextBox ID="txtShortDetail" runat="server" placeholder="Short Detail" CssClass="form-control" Width="734px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtShortDetail" ValidationGroup="vaild" ErrorMessage="required" />

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Long Detail</label>
                                     <FTB:FreeTextBox ID="txtLongDetail" runat="server"> </FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Blog Image</label>
                                    <asp:FileUpload ID="fuLogoImage" runat="server" Width="400px" CssClass="form-control textboxnew"></asp:FileUpload>
                                    <asp:Label ID="lblLogoImage" runat="server" Width="100px" Height="100px" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvLogoImage" runat="server" ControlToValidate="fuLogoImage" ValidationGroup="vaild" ErrorMessage="required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Offer Image</label>
                                    <asp:FileUpload ID="fuOfferImage" runat="server" Width="400px" CssClass="form-control textboxnew"></asp:FileUpload>
                                    <asp:Label ID="lblOfferImage" runat="server" Width="100px" Height="100px" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvOfferImage" runat="server" ControlToValidate="fuOfferImage" ValidationGroup="vaild" ErrorMessage="required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>URL</label>
                                    <asp:TextBox ID="txtUrl" runat="server" Placeholder="Url" CssClass="form-control" Width="400px" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUrl" ValidationGroup="vaild" ErrorMessage="required" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Status</label>
                                    <asp:DropDownList class="form-control" runat="server" ID="ddlStatus" Width="400px">
                                        <asp:ListItem Text="Activate" Value="A" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Deactivate" Value="D"></asp:ListItem>
                                    </asp:DropDownList>
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
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-info btn-fill" ValidationGroup="vaild" OnClick="btnsubmit_Click" />
                <hr>
               <%-- <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>--%>
            </div>
        </div>
    </div>
     <asp:HiddenField ID="hdnBlogDetailsID" runat="server" Value="" />
</asp:Content>
