<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bienvenido.aspx.cs" Inherits="EjemploWF.bienvenido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>          BIENVENIDO A LA PÁGINA</h1>
            <br />
            <br />
            <h6>¿Te ha costado mucho entrar hasta aquí?</h6>
            <p>      <asp:Button ID="Button1" runat="server" Text="Regresar" BackColor="#99CCFF" BorderColor="#000066" Font-Bold="True" OnClick="Button1_Click" />          </p>
        </div>
    </form>
</body>
</html>
