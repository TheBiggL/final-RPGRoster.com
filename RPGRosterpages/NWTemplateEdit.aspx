<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWTemplateEdit.aspx.cs" Inherits="RPGRosterpages.NWTemplateEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 540px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
<table style="margin:0 auto" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label Text="Head Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWAHead" runat="server">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
                    <td>
                        <asp:Label Text="Chest Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
                    <td>
                        <asp:Label Text="Hand Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
                    <td>
                        <asp:Label Text="Leg Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
                    <td>
                        <asp:Label Text="Foot Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
                    <td>
                        <asp:Label Text="Bio" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10="NWBio" runat="server" TextMode="MultiLine" Height="104px" Width="394px" />
                    </td>
              
                </tr>
    </table>
        </div>
        
        <asp:Button ID="NWTempView" runat="server" OnClick="Button1_Click" Text="View" />
        
    </form>
</body>
</html>
