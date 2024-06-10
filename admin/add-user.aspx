<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="add-user.aspx.cs" Inherits="SLI.admin.add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add User</h4>

                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>User Name *</label>
                                    <asp:TextBox runat="server" ID="txtUserName" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="Vaild" ControlToValidate="txtUserName" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Required">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>User ID *</label>
                                    <asp:TextBox runat="server" ID="txtUserId" onfocusout='CheckUserId(this.value);' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUserId" ValidationGroup="Vaild" ControlToValidate="txtUserId" runat="server" ForeColor="Red" ErrorMessage="Required"> </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>User Type *</label>
                                    <asp:DropDownList class="form-control" runat="server" ID="ddlUserType">
                                        <asp:ListItem Value="-1">Select User Type</asp:ListItem>
                                        <asp:ListItem Value="0">Super Admin</asp:ListItem>
                                        <asp:ListItem Value="1">Admin</asp:ListItem>
                                        <asp:ListItem Value="2">Normal User</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ValidationGroup="Vaild" InitialValue="-1" ControlToValidate="ddlUserType" runat="server" ForeColor="Red" ErrorMessage="Required">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Phone Number *</label>
                                    <asp:TextBox runat="server" ID="txtPhoneNumber" class="form-control txtnumeric"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="Vaild" Display="Dynamic" ControlToValidate="txtPhoneNumber" runat="server" ForeColor="Red" ErrorMessage="Required">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Email ID *</label>
                                    <asp:TextBox runat="server" ID="txtEmailId" onfocusout='CheckEmailId(this.value);' class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="Vaild" ControlToValidate="txtEmailId" runat="server" ID="rvfEmailId" ForeColor="Red" ErrorMessage="Required">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ValidationGroup="Vaild"
                                        runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="txtEmailId" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Password *</label>
                                   <asp:TextBox runat="server" ID="txtPassword" class="form-control"> </asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="Vaild" ControlToValidate="txtPassword" runat="server" ForeColor="Red" ErrorMessage="Required">
                                            </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Address *</label>
                                   <asp:TextBox TextMode="MultiLine" runat="server" ID="txtAddress" class="form-control" Rows="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="Vaild" ControlToValidate="txtAddress" runat="server" ForeColor="Red" ErrorMessage="Required">
                                            </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Upload Image</label>
                                    <asp:FileUpload ID="fuUserImage" runat="server" Width="400px" CssClass="form-control textboxnew"></asp:FileUpload>
                                    <asp:Label ID="lblLogoImage" runat="server" Width="100px" Height="100px" Visible="false"></asp:Label>
                                  <%--  <asp:RequiredFieldValidator ID="rfvOfferImage" runat="server" ControlToValidate="fuOfferImage" ValidationGroup="vaild" ErrorMessage="required"></asp:RequiredFieldValidator>--%>
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
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-info btn-fill" ValidationGroup="Vaild" OnClick="btnsubmit_Click" />
                <hr>
                <%-- <span class="update-t">Attachment </span>

                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="previewFile1()"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>--%>
            </div>
        </div>
    </div>
     <asp:HiddenField ID="hdnUserId" runat="server" Value="" />
</asp:Content>
