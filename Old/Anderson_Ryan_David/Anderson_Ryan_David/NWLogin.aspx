<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWLogin.aspx.cs" Inherits="Anderson_Ryan_David.NWLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
<style>
    body{
    }
</style>
</head>
<body>
    <form id="NWLog" runat="server">
        <div>
            <table style="margin:auto;border:5px solid white":>
                <tr>
                    <td>
                        <asp:Label ID="NWLogUsernameLabel" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NWLogUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="NWLogPasswordLabel" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NWLogPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="NWUserLogin" runat="server" Text="Login" OnClick="NWUserLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="NWLogError" runat="server" Text="Incorect User Credentials" ForeColor ="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
