<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="popular-course.aspx.cs" Inherits="SLI.admin.popular_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title pull-left">Popular Course Details</h4>
                        <a href="add-popular-courses.aspx" class="btn btn-info btn-fill pull-right">Add Popular Course</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover">
                            <thead>
                                <th>SNo </th>
                                <th>Course Name </th>
                                <th>Price</th>
                                <th>Duration</th>
                                <th>Status </th>
                                <th>Created Date </th>
                                <th>Action </th>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RepDetails" runat="server" OnItemCommand="RepDetails_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex + 1 %>
                                                <asp:Label runat="server" ID="LblCode" Text='<%#Eval("Code") %>' Visible="false"></asp:Label></td>
                                            <td><%#Eval("CourseName") %></td>
                                            <td><%#Eval("Price") %></td>
                                            <td><%#Eval("Duration") %></td>
                                            <td><%#Eval("Status") %></td>
                                            <td><%#Eval("CreatedDate") %></td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton3" class="text-primary" runat="server" CommandName="Edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton1" class="text-danger" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete record ?')"><i class="fa fa-close"></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
