<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="add-seo-setting.aspx.cs" Inherits="SLI.admin.add_seo_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add SEO Setting</h4>
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Select Course</label>
                                    <asp:DropDownList ID="ddCourse" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddCourse" InitialValue="-1" ErrorMessage="required" ></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Paper Title</label>
                                    <asp:TextBox ID="txtPaperTitle" runat="server" placeholder="Paper Title" CssClass="form-control" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Alt Tag</label>
                                    <asp:TextBox ID="txtAltTag" runat="server" placeholder="Alt Tag" CssClass="form-control" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Keyword</label>
                                    <asp:TextBox ID="txtKeywords" runat="server" placeholder="Keywords" CssClass="form-control" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <asp:TextBox ID="txtDescription" runat="server" placeholder="Description" CssClass="form-control" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>H1 Tag</label>
                                    <asp:TextBox ID="txtH1Tag" runat="server" placeholder="H1 Tag" CssClass="form-control" Required></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Status</label>
                                    <asp:DropDownList class="form-control" runat="server" ID="ddStatus">
                                        <asp:ListItem Value="A">Activate</asp:ListItem>
                                        <asp:ListItem Value="D">Deactivate</asp:ListItem>
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
                <asp:Button ID="btnsubmit" runat="server" Text="Update SEO Setting" CssClass="btn btn-info btn-fill" OnClick="btnsubmit_Click" />
               <%-- <hr>
                <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>--%>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hdId" runat="server" />
</asp:Content>
