<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryjson.aspx.cs" Inherits="tepinet.tryjson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lblGameName" Text="Game Name"></asp:Label><br />
            <asp:TextBox runat="server" ID="txtGameName"></asp:TextBox><br />
            <asp:Label runat="server" ID="lblVersionIO" Text="Version IO"></asp:Label><br />
            <asp:TextBox runat="server" ID="txtVersionIO"></asp:TextBox><br />
            <asp:Button runat="server" ID="btnSave" Text="Guardar" OnClick="btnSave_Click"/>
            <br />
            <asp:Button runat="server" ID="btnJson" Text="Generar JSON" OnClick="btnJson_Click"/>
        </div>
    </form>
</body>
</html>
