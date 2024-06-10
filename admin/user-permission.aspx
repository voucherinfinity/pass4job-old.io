<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminpage.master" AutoEventWireup="true" CodeBehind="user-permission.aspx.cs" Inherits="SLI.admin.user_permission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function SelectPermissionAll() {
            var chkPermissionAll = document.getElementById("<%=chkPermissionAll.ClientID%>");
            var allCheckBoxes = document.getElementById("dvPermissionCheckBox").getElementsByTagName("input");
            for (var i = 0; i < allCheckBoxes.length; i++) {
                if (allCheckBoxes[i].type == "checkbox") {
                    allCheckBoxes[i].checked = chkPermissionAll.checked;
                }
            }
        }
        function SelectPermission() {
            var chkPermissionAll = document.getElementById("<%=chkPermissionAll.ClientID%>");
            var allCheckBoxes = document.getElementById("dvPermissionCheckBox").getElementsByTagName("input");
            var varCountCheck = 0;
            var varCountChecked = 0;
            if (chkPermissionAll.checked) {
                for (var i = 0; i < allCheckBoxes.length; i++) {
                    if (allCheckBoxes[i].type == "checkbox") {
                        if (!allCheckBoxes[i].checked) {
                            chkPermissionAll.checked = false;
                            break;
                        }
                    }
                }
            }
            else if (!chkPermissionAll.checked) {
                for (var i = 0; i < allCheckBoxes.length; i++) {
                    if (allCheckBoxes[i].type == "checkbox") {
                        varCountChecked++;
                        if (allCheckBoxes[i].checked) {
                            varCountCheck++;
                        }
                    }
                }
                if (varCountCheck == varCountChecked) {
                    chkPermissionAll.checked = true;
                }
            }
        }
    </script>
    <div class="header">
        <h4 class="title">User Permission</h4>
        <asp:Label ID="lblMessage" runat="server" Text="&nbsp;" Style="display: none;"></asp:Label>
    </div>
    <asp:Panel ID="pnlAddPermission" runat="server" ClientIDMode="Static" CssClass="tab-pane active fade in">
        <div class="body">
            <div class="row clearfix">
                <div class="col-md-4">
                    <b>Select User Type</b>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="ddlUsersType" runat="server" CssClass="form-control show-tick" AutoPostBack="true" OnSelectedIndexChanged="ddlUsersType_SelectedIndexChanged">
                        <asp:ListItem Text="--Select Option--" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Super Admin" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Normal User" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div id="dvUsers" runat="server" visible="false" class="row clearfix">
                <div class="col-md-4">
                    <b>Select User</b>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control show-tick" AutoPostBack="true" OnSelectedIndexChanged="ddlUsers_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <div id="dvContent" runat="server" visible="false" class="row clearfix">
                <div class="col-md-4" style="margin-top: 22px;">
                    <div class="header">
                        <h4>Select Module</h4>
                    </div>
                    <div class="body">
                        <div class="list-group">
                            <asp:CheckBox ID="chkPermissionAll" runat="server" Text="Select All" onchange='javascript : SelectPermissionAll();' />
                            <div id="dvPermissionCheckBox">
                                <asp:Repeater ID="rptPermissions" runat="server">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkPermission" runat="server" onchange='javascript : SelectPermission();'
                                            Style="border: 2PX SOLID #d8d6d6; background-color: #d8d6d6; color: #000;" CssClass="list-group-item"
                                            Text='<%#Eval("Module_Name") %>' Checked='<%#Convert.ToBoolean(Eval("ModuleCheck")) %>' />
                                        <asp:HiddenField ID="hdnModuleId" runat="server" Value='<%#Eval("Module_Id") %>' />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="dvButtonSection" runat="server" visible="false">
                    <div class="col-md-1" style="margin-top: 22px;">
                        <div class="body" style="margin-top: 66px;">
                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnSave_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="col-md-1" style="margin-top: 22px;">
                        <div class="body" style="margin-top: 66px;">
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger" OnClick="btnReset_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
