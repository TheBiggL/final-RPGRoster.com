<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWRegister.aspx.cs" Inherits="RPGRoster.com.New_World.NWRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
    body {background-color: palegoldenrod;}
        </style>
        <div>
            <asp:HiddenField ID="hfUserID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Username" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10 ID="NWUsername" runat="server" />
                        <asp:Label Text="*" runat="server" ForeColor="Red"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Password" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10  ID="NWPassword" runat="server" TextMode="Password" />
                        <asp:Label Text="*" runat="server" ForeColor="Red"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Confirm Password" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10 ID="NWPasswordConf" runat="server" TextMode="Password"/>
                    <asp:Label Text="*" runat="server" ForeColor="Red"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10 ID="NWEmail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button Text="Submit" ID="NWRegBtn" runat="server" OnClick="NWRegBtn_Click" />

                    </td>

                </tr>
                  <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="SuccessMessage" runat="server" ForeColor="Green" />

                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="ErrorMessage" runat="server" ForeColor="Red" />

                    </td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>