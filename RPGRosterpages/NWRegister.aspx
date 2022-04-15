<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWRegister.aspx.cs" Inherits="RPGRosterpages.NWRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Username" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10="NWUsername" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Password" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10="NWPassword" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Confirm Password" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10="NWPasswordConf" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10="NWEmail" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
