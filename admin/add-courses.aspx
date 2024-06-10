<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="add-courses.aspx.cs" Inherits="SLI.admin.add_courses" %>
 <%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdfUrl" runat="server" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add Course</h4>
                    </div>
                    <div class="content">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Vendor Name</label>
                                    <asp:DropDownList ID="ddVender" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddVender_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddVender" InitialValue="-1" ErrorMessage="required" ValidationGroup="vaild"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Course Category</label>
                                    <asp:DropDownList ID="ddCourseCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddCourseCategory" InitialValue="-1" ErrorMessage="required" ValidationGroup="vaild"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Courses Name</label>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Courses Name" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>URL</label>
                                    <asp:TextBox ID="txtURL" runat="server" placeholder="URL" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab 1</label>
                                    <asp:TextBox ID="txtName1" runat="server" placeholder="Tab 1" CssClass="form-control" Required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 1</label>
                                    <FTB:FreeTextBox ID="txtDescription1" runat="server" Width="734px" Height="200px" ></FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab 2</label>
                                    <asp:TextBox ID="txtName2" runat="server" placeholder="Tab 2" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 2</label>
                                    <FTB:FreeTextBox ID="txtDescription2" runat="server" Width="734px" Height="200px"></FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab 3</label>
                                    <asp:TextBox ID="txtName3" runat="server" placeholder="Tab 3" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 3</label>
                                    <FTB:FreeTextBox ID="txtDescription3" runat="server" Width="734px" Height="200px" ></FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab 4</label>
                                    <asp:TextBox ID="txtName4" runat="server" placeholder="Tab 4" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 4</label>
                                   <FTB:FreeTextBox ID="txtDescription4" runat="server" Width="734px" Height="200px" ></FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab 5</label>
                                    <asp:TextBox ID="txtName5" runat="server" placeholder="Tab 5" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 5</label>
                                    <FTB:FreeTextBox ID="txtDescription5" runat="server" Width="734px" Height="200px"></FTB:FreeTextBox>
                                </div>
                            </div>
                        </div>

                        <%--    <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Name 6</label>
                                    <asp:TextBox ID="txtName6" runat="server" placeholder="Tab 6" CssClass="form-control"></asp:TextBox>
                                
                                </div>
                            </div>
                        </div>--%>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tab Detail 6</label>
                                    <FTB:FreeTextBox ID="txtDescription6" runat="server" Width="734px" Height="200px"></FTB:FreeTextBox>


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
                <asp:Button ID="btnsubmit" runat="server" Text="Update Course" CssClass="btn btn-info btn-fill" ValidationGroup="vaild" OnClick="btnsubmit_Click" />
                <hr>
                <span class="update-t">Attachment </span>
                Course Image
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload>
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id" runat="server" Text="" Visible="false"></asp:Label>
                Course Content
                <asp:FileUpload ID="FileUpload2" runat="server" class="form-control"></asp:FileUpload>
                <asp:Label ID="Label11" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Lbl_Id1" runat="server" Text="" Visible="false"></asp:Label>
            </div>

        </div>
    </div>
   <%-- <script>
        CKEDITOR.replace('txtDescription1');
        CKEDITOR.replace('txtDescription2');
        CKEDITOR.replace('txtDescription3');
        CKEDITOR.replace('txtDescription4');
        CKEDITOR.replace('txtDescription5');
        CKEDITOR.replace('txtDescription6');
    </script>--%>
</asp:Content>
