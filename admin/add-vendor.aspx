<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="add-vendor.aspx.cs" Inherits="SLI.admin.add_vendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add Vendor Detail</h4>
                    </div>
                    <div class="content">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Vendor Name</label>

                                    <asp:TextBox ID="txtVenderName" runat="server" placeholder="Vendor Name" CssClass="form-control" Required></asp:TextBox>
                                    <%-- <input type="text" class="form-control" placeholder="Name" value="Mike">--%>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Status</label>

                                    <asp:DropDownList ID="ddStatus" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="A">Active</asp:ListItem>
                                        <asp:ListItem Value="D">Inactive</asp:ListItem>
                                    </asp:DropDownList>
                                    <%-- <input type="text" class="form-control" placeholder="Name" value="Mike">--%>
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
                <%-- <button type="submit" class="btn btn-info btn-fill">Update Profile</button>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Update Vendor" CssClass="btn btn-info btn-fill" OnClick="btnsubmit_Click" />
                <hr>
                <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>

                <%-- <input type="file" value="add attchment" class="form-control">--%>
            </div>

        </div>
    </div>
</asp:Content>
