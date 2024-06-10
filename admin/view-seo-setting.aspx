<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="view-seo-setting.aspx.cs" Inherits="SLI.admin.view_seo_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title pull-left">SEO Settings</h4>
                        <a href="add-seo-setting.aspx" class="btn btn-info btn-fill pull-right">Add SEO Details</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover">
                            <thead>
                                <th>SNo. </th>
                                <th>Course Name </th>
                                <th>Tittle </th>
                                <th>Date </th>
                                <th>Action </th>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RepDetails" runat="server" OnItemCommand="RepDetails_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex + 1 %>
                                                <asp:Label runat="server" ID="lblCode" Text='<%#Eval("Id") %>' Visible="false"></asp:Label></td>
                                            <td><%#Eval("coursename") %></td>
                                            <td><%#Eval("PageTitle") %></td>
                                            <%--   <td><%#Eval("longdetail") %></td>--%>
                                            <td><%#Eval("ActDate") %></td>
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
