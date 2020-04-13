<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 104px;
        }
        .auto-style5 {
            width: 104px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body style="height: 125px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    Username</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUsername" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;<asp:Button ID="LoginButton" runat="server" OnClick="BtnLogin_Click" Text="Login" Width="123px" />
&nbsp;&nbsp;
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" Width="123px" OnClick="BtnRegister_Click1" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>

