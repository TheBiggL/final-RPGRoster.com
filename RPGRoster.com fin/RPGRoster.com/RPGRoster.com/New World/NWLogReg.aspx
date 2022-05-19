<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWLogReg.aspx.cs" Inherits="RPGRoster.com.New_World.NWLogReg" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <asp:Button ID="NWRegBtn" runat="server" Text="Register" OnClick="NWRegBtn_Click" Height="60px" Width="200px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="NWLogBtn" runat="server" Text="Login" OnClick="NWLogBtn_Click" Height="60px" Width="200px"  />
    </form>
</body>
</html>