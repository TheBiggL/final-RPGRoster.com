<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWLoginNew.aspx.cs" Inherits="RPGRoster.com.New_World.NWLoginNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>  
    <form id="form1" runat="server"> 
        <style>
body{background-color: palegoldenrod;}

        </style>
        <div >  
            <table>  
                <tr>  
                    <td >  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td >  
                        <asp:Label ID="NWUNLab" Text="Username" runat="server">

                        </asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextB1s" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="NWPWLab" Text="Password" runat="server"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextB2s" TextMode="Password" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        </td>  
                </tr>  
                <tr>  
                    <td>  
 </td>  
                    <td>  
                        <asp:Label id ="NWLab1ss" runat="server"></asp:Label></td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td>  
 </td>  
                    <td>  
                        <asp:Button ID="B1s" runat="server" Text="Log In" onclick="B1s_Click" />  
                    </td>  
                    <td>  
                        &nbsp;</td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body> 
</html>