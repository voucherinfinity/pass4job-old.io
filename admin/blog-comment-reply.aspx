<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="blog-comment-reply.aspx.cs" Inherits="SLI.admin.blog_comment_reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title pull-left">Blog Comment Reply Details</h4>
                        <%-- <a href="add-blog.aspx" class="btn btn-info btn-fill pull-right">Add Blog</a>--%>

                        <div class="clearfix"></div>
                    </div>
                    <asp:Label ID="lblMessage" runat="server" Text="&nbsp;" ForeColor="Red" ClientIDMode="Static"></asp:Label>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover">
                            <thead>
                                <th>ID </th>
                                <th>Comment Name </th>
                                <th>Reply By</th>
                                <th>Email ID </th>
                                <th>Reply of Comment </th>
                                <th>Status </th>
                                <th>Action </th>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RepDetails" runat="server" OnItemCommand="RepDetails_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex + 1 %>
                                                <asp:Label runat="server" ID="LblCode" Text='<%#Eval("Code") %>' Visible="false"></asp:Label></td>
                                            <td><%#Eval("CommentName") %></td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>' /></td>
                                            <td><%#Eval("Email") %></td>
                                            <td><%#Eval("Commnet") %></td>
                                            <td>
                                                <asp:DropDownList ID="ddReplyCommentStatus" runat="server" OnSelectedIndexChanged="SelectedIndexChange_ddReplyCommentStatus" AutoPostBack="true" class="form-control">
                                                    <asp:ListItem Value="D">Inactive</asp:ListItem>
                                                    <asp:ListItem Value="A">Active</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td>
                                                <%--<asp:LinkButton ID="LinkButton3" class="text-primary" runat="server" CommandName="Edit"><i class="fa fa-pencil"></i></asp:LinkButton>--%>
                                                <asp:LinkButton ID="LinkButton1" class="text-danger" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete record ?')"><i class="fa fa-close"></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </tbody>
                        </table>

                    </div>
                    <script type="text/javascript">  
                        window.onload = function () {
                            var seconds = 5;
                            setTimeout(function () {
                                document.getElementById("<%=lblMessage.ClientID %>").style.display = "none";
                            }, seconds * 1000);
                        };
                    </script>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
