<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NWTemplate.aspx.cs" Inherits="RPGRoster.com.New_World.NWTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 540px;
        }

    body {background-color: palegoldenrod;}
        
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
<table style="margin:0 auto" class="auto-style1">
       <tr>
           <td>
                        <asp:Label ID="NWPCode" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="Server Name" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                            <asp:ListItem>Aaru</asp:ListItem>
                            <asp:ListItem>Abaton</asp:ListItem>
                            <asp:ListItem>Amenti</asp:ListItem>
                            <asp:ListItem>Apsu</asp:ListItem>
                            <asp:ListItem>Avalon</asp:ListItem>
                            <asp:ListItem>Barri</asp:ListItem>
                            <asp:ListItem>Bran</asp:ListItem>
                            <asp:ListItem>Brittia</asp:ListItem>
                            <asp:ListItem>Camelot</asp:ListItem>
                            <asp:ListItem>Castle of Steel</asp:ListItem>
                            <asp:ListItem>Delos</asp:ListItem>
                            <asp:ListItem>Devaloka</asp:ListItem>
                            <asp:ListItem>Dry Tree</asp:ListItem>
                            <asp:ListItem>El Dorado</asp:ListItem>
                            <asp:ListItem>Evonium</asp:ListItem>
                            <asp:ListItem>Hyperborea</asp:ListItem>
                            <asp:ListItem>Irkalla</asp:ListItem>
                            <asp:ListItem>Lilliput</asp:ListItem>
                            <asp:ListItem>Maramma</asp:ListItem>
                            <asp:ListItem>Midgard</asp:ListItem>
                            <asp:ListItem>Nysa</asp:ListItem>
                            <asp:ListItem>Ohonoo</asp:ListItem>
                            <asp:ListItem>Orofena</asp:ListItem>
                            <asp:ListItem>Orun</asp:ListItem>
                            <asp:ListItem>Pluto</asp:ListItem>
                            <asp:ListItem>Rocabarra</asp:ListItem>
                            <asp:ListItem>Ship-Trap</asp:ListItem>
                            <asp:ListItem>Siiha</asp:ListItem>
                            <asp:ListItem>Tartarus</asp:ListItem>
                            <asp:ListItem>Tir Na Nog</asp:ListItem>
                            <asp:ListItem>Utopia</asp:ListItem>
                            <asp:ListItem>Valhalla</asp:ListItem>
                            <asp:ListItem>Vega</asp:ListItem>
                            <asp:ListItem>Yggdrasil</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Player Picture" ID="NWPlayerPic" runat="server" OnClick="NWPlayerPic_Click" />
        </td>--%>
    </tr>
    <tr>
        <td>
        <asp:Label Text="Character Name" runat ="server" />
            </td>
        <td>
            <asp:TextBox 10 ID ="NWCName" runat="server" Width="250px" OnTextChanged="NWCName_TextChanged" />
        </td>

    </tr>
    <tr>
        <td>
        <asp:Label Text="Gear Score" runat ="server" />
            </td>
        <td>
            <asp:TextBox 10 ID ="NWGSTextBox" runat="server" Width="100px" OnTextChanged="NWGS_TextChanged" />
        </td>

    </tr>
    <tr>
    <td></td>
        </tr>
    <tr>
                    <td>
                        <asp:Label Text="Weight" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWWeight" runat="server" OnSelectedIndexChanged="NWWeight_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
    <td></td>
        </tr>
                <tr>
                    <td>
                        <asp:Label Text="Head Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWAHead" runat="server" OnSelectedIndexChanged="NWAHead_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
        <tr>
        <td></td>
            <%-- <td>
            <asp:Button Text ="Head Armor Picture" ID="NWHeadPic" runat="server" OnClick="NWHeadPic_Click" />
        </td>--%>
    </tr>
    
      <tr>
                    <td>
                        <asp:Label Text="Chest Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWAChest" runat="server" OnSelectedIndexChanged="NWAChest_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
        <td></td>
          <%--<td>
            <asp:Button Text ="Chest Armor Picture" ID="NWChestPic" runat="server" OnClick="NWChestPic_Click" />
        </td>--%>
    </tr>
      <tr>
                    <td>
                        <asp:Label Text="Hand Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWAHand" runat="server" OnSelectedIndexChanged="NWAHand_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
      <tr>
        <td></td>
          <%--<td>
            <asp:Button Text ="Hand Armor Picture" ID="NWHandPic" runat="server" OnClick="NWHandPic_Click" />
        </td>--%>
    </tr>
      <tr>
                    <td>
                        <asp:Label Text="Leg Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWALeg" runat="server" OnSelectedIndexChanged="NWALeg_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Leg Armor Picture" ID="NWLegPic" runat="server" OnClick="NWLegPic_Click" />
        </td>--%>
    </tr>
      <tr>
                    <td>
                        <asp:Label Text="Foot Armor" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWAFoot" runat="server" OnSelectedIndexChanged="NWAFoot_SelectedIndexChanged">
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Foot Armor Picture" ID="NWFootPic" runat="server" OnClick="NWFootPic_Click" />
        </td>--%>
    </tr>
    <tr>
                    <td>
                        <asp:Label Text="Shield" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWShield" runat="server" OnSelectedIndexChanged="NWShield_SelectedIndexChanged">
                            <asp:ListItem>None</asp:ListItem>
                            <asp:ListItem>Round</asp:ListItem>
                            <asp:ListItem>Kite</asp:ListItem>
                            <asp:ListItem>Tower</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Shield Picture" ID="NWShieldPic" runat="server" OnClick="NWShieldPic_Click" />
        </td>--%>
    </tr>
    <tr>
                    <td>
                        <asp:Label Text="Weapon 1" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWWeapon1" runat="server" OnSelectedIndexChanged="NWWeapon1_SelectedIndexChanged">
                            <asp:ListItem>Sword</asp:ListItem>
                            <asp:ListItem>Rapier</asp:ListItem>
                            <asp:ListItem>Hatchet</asp:ListItem>
                            <asp:ListItem>Spear</asp:ListItem>
                            <asp:ListItem>Great Axe</asp:ListItem>
                            <asp:ListItem>War Hammer</asp:ListItem>
                            <asp:ListItem>Bow</asp:ListItem>
                            <asp:ListItem>Musket</asp:ListItem>
                            <asp:ListItem>Blunderbuss</asp:ListItem>
                            <asp:ListItem>Fire Staff</asp:ListItem>
                            <asp:ListItem>Life Staff</asp:ListItem>
                            <asp:ListItem>Ice Gauntlet</asp:ListItem>
                            <asp:ListItem>Void Gauntlet</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Weapon 1 Picture" ID="NWWeapon1Pic" runat="server" OnClick="NWWeapon1Pic_Click" />
        </td>--%>
    </tr>
        <tr>
                    <td>
                        <asp:Label Text="Weapon 2" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="NWWeapon2" runat="server" OnSelectedIndexChanged="NWWeapon2_SelectedIndexChanged">
                            <asp:ListItem>Sword</asp:ListItem>
                            <asp:ListItem>Rapier</asp:ListItem>
                            <asp:ListItem>Hatchet</asp:ListItem>
                            <asp:ListItem>Spear</asp:ListItem>
                            <asp:ListItem>Great Axe</asp:ListItem>
                            <asp:ListItem>War Hammer</asp:ListItem>
                            <asp:ListItem>Bow</asp:ListItem>
                            <asp:ListItem>Musket</asp:ListItem>
                            <asp:ListItem>Blunderbuss</asp:ListItem>
                            <asp:ListItem>Fire Staff</asp:ListItem>
                            <asp:ListItem>Life Staff</asp:ListItem>
                            <asp:ListItem>Ice Gauntlet</asp:ListItem>
                            <asp:ListItem>Void Gauntlet</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
    <tr>
        <td></td>
        <%--<td>
            <asp:Button Text ="Weapon 2 Picture" ID="NWWeapon2Pic" runat="server" OnClick="NWWeapon2Pic_Click" />
        </td>--%>
    </tr>
    <tr>
        <td> <p>
            <asp:Literal ID="LiteralSub" runat="server" ></asp:Literal>
            </p>
        </td>
        <%--<td>
            <asp:Button Text ="Amulet Picture" ID="NWAmuletPic" runat="server" OnClick="NWAmuletPic_Click" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button Text ="Ring Picture" ID="NWRingPic" runat="server" OnClick="NWRingPic_Click" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button Text ="Earing Picture" ID="NWEaringPic" runat="server" OnClick="NWEaringPic_Click" />
        </td>--%>
    </tr>
  
    <%--<tr>
                    <td>
                        <asp:Label Text="Bio" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox 10 ID ="NWBio" runat="server" TextMode="MultiLine" Height="104px" Width="394px" OnTextChanged="NWBio_TextChanged" />
                    </td>
              
                </tr>--%>
    <tr><td>
                    <asp:Button ID="NWSubmits" runat="server"  OnClick="NWSubmitButton_Click" Text="Submit"/>
                    
                    <td>
                    <asp:Button ID="GuildButton" runat="server" OnClick="GuildButton_Click" Text="Guild" />
        </td></tr>
        
       <%-- 
        <asp:Button ID="NWView" runat="server" OnClick="NWViewButton_Click" Text="View" />
        --%>
       
        
       </table> 
            </div>
    </form>
</body>
</html>
