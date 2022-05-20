<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWTempGuild.aspx.cs" Inherits="NewWorldRoster.NWTempGuild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="NWGuild" runat="server" Text="Manage Guild" OnClick="NWGuild_Click" Height="60px" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="NWTemplate" runat="server" Text="Manage Template" OnClick="NWTemplate_Click" CssClass="auto-style1" Height="60px" Width="200px" />
    </form>
</body>
</html>
