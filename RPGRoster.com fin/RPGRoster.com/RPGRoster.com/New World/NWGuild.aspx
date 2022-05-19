<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWGuild.aspx.cs" Inherits="RPGRoster.com.New_World.NWGuild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 162px;
        }
        .auto-style4 {
            height: 26px;
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table align="left" class="auto-style1">
                <tr>
                    <td class="auto-style3">Player Code:</td>
                    <td>
                        <asp:TextBox ID="txtgsearch" runat="server"></asp:TextBox>
                        <asp:Button ID="GSearch" runat="server" OnClick="GSearch_Click" Text="Search" />
                        <asp:Label ID="GError" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Character Name:</td>
                    <td>
                        <asp:Label ID="Cname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Server:</td>
                    <td>
                        <asp:Label ID="Sname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gear Score:</td>
                    <td>
                        <asp:Label ID="GS" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Weight:</td>
                    <td>
                        <asp:Label ID="CWeight" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Primary Weapon:</td>
                    <td>
                        <asp:Label ID="Wep1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Secondary Weapon:</td>
                    <td>
                        <asp:Label ID="Wep2" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Shield:</td>
                    <td class="auto-style2">
                        <asp:Label ID="ShieldS" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="TempGo" runat="server" OnClick="TempGo_Click" Text="Template" />
        </p>
        <%--<div id="gvAddrow">  
    <asp:gridview ID="Gridview1" runat="server" ShowFooter="true" AutoGenerateColumns="false" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged">  
        <Columns>  
            <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />  
            <asp:TemplateField HeaderText="Character Name">  
                <ItemTemplate>  
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>  
                </ItemTemplate>  
            </asp:TemplateField>  
            <asp:TemplateField HeaderText="Server">  
                <ItemTemplate>  
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>  
                </ItemTemplate>  
            </asp:TemplateField>  
            <asp:TemplateField HeaderText="Gear Score">  
                <ItemTemplate>  
                    <asp:TextBox ID="txt3" runat="server"></asp:TextBox>  
                </ItemTemplate>  
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight"> 
                <ItemTemplate>  
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>  
                </ItemTemplate> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Primary Weapon"> 
                <ItemTemplate>  
                    <asp:TextBox ID="txt5" runat="server"></asp:TextBox>  
                </ItemTemplate> 
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Secondary Weapon"> 
                <ItemTemplate>  
                    <asp:TextBox ID="txt6" runat="server"></asp:TextBox>  
                </ItemTemplate> 
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Shield"> 
                <ItemTemplate>  
                    <asp:TextBox ID="txt7" runat="server"></asp:TextBox>  
                </ItemTemplate> 
                
            
                <FooterStyle HorizontalAlign="Left" />  
                <FooterTemplate>  
                    <asp:Button ID="ButtonAdd" runat="server" Text="Add Row" onclick="ButtonAdd_Click" /> </FooterTemplate>  
            </asp:TemplateField>  
        </Columns>  
    </asp:gridview>  
</div>  --%>
    </form>
</body>
</html>
