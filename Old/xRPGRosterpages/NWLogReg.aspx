<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWLogReg.aspx.cs" Inherits="RPGRosterpages.NWLogReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="NWRegBtn" runat="server" Text="Register" OnClick="NWRegBtn_Click" />
        </div>
        <asp:Button ID="NWLogBtn" runat="server" Text="Login" OnClick="NWLogBtn_Click" />
    </form>
</body>
</html>
