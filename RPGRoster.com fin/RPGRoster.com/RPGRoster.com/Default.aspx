<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RPGRoster.com._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>What are Rosters?</h1>
        <p class="lead">Within this site a Roster is a collection of user implimented data that allows Players to keep track of their friends and fellow guildmates progress.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                <asp:Button ID="NWButton" runat="server" OnClick="NWButton_Click" Text="New World Roster" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>More Rosters will be added in the future in order to support more games!!!</h2>
        </div>
    </div>

</asp:Content>
