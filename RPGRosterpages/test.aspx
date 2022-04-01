<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="RPGRosterpages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
&nbsp;<body><form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" />
        </div>
    </form>
    <p>
<input id="Button1" type="button" value="button" /></p>
    <input id="Text1" type="text" /><asp:Login ID="Login1" runat="server"></asp:Login>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</body>
</html>
