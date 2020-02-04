<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFormulario.aspx.cs" Inherits="EjemploWF.FrmFormulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FORMULARIO DE EJEMPLO</h2><br />
            <strong>Nombre de usuario:</strong>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsuario" runat="server" MaxLength="20" Width="230px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Usuario</asp:RequiredFieldValidator>
            <br />
            <br />
             <strong>Clave: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtClave" runat="server" MaxLength="16" TextMode="Password" Width="160px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClave" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Clave</asp:RequiredFieldValidator>
            <br />
            <br />
            <strong>Repita Clave:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtClave2" runat="server" MaxLength="16" TextMode="Password" Width="160px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClave2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Repetir Clave</asp:RequiredFieldValidator>
&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtClave" ControlToValidate="txtClave2" ErrorMessage="CompareValidator" ForeColor="#FF9900">Clave no coincide</asp:CompareValidator>
            <br />
            <br /><strong>Correo electronico:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCorreo" runat="server" Width="234px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Correo</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF6600">Correo invalido</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>Apellido:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtApellido1" runat="server" Width="205px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtApellido1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Apellido</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido1" ErrorMessage="RegularExpressionValidator" ValidationExpression="[A-Za-z ]*" ForeColor="#FF6600">Solo Letras</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>Nombre:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombre" runat="server" Width="208px" Font-Names="Comic Sans MS"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Nombre</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNombre" ErrorMessage="RegularExpressionValidator" ValidationExpression="[A-Za-z ]*" ForeColor="#FF6600">Solo Letras</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>País de Origen:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">Argentina</asp:ListItem>
                <asp:ListItem>Colombia</asp:ListItem>
                <asp:ListItem>Cuba</asp:ListItem>
                <asp:ListItem>Mexico</asp:ListItem>
                <asp:ListItem>Peru</asp:ListItem>
                <asp:ListItem>Venezuela</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <strong>Código Postal:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server" Font-Names="Comic Sans MS" MaxLength="5"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Código Postal</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]*" ForeColor="#FF6600">Solo numeros</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>Sexo:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Hombre</asp:ListItem>
                <asp:ListItem>Mujer</asp:ListItem>
            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Elija uno</asp:RequiredFieldValidator>
            <br />
            <strong>Fecha de nacimiento:</strong>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFecha" runat="server" Width="160px" Font-Names="Century"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFecha" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Fecha Nacimiento</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtFecha" ErrorMessage="RegularExpressionValidator" ValidationExpression="([0-9][0-9][/][0-9][0-9][/][0-9][0-9][0-9][0-9])" ForeColor="#FF6600">dd/mm/aaaa</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>Comentarios:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtComentario" runat="server" Height="113px" TextMode="MultiLine" Width="252px" Font-Names="Bodoni MT Condensed"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <strong>Acepto Terminos</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Acepto terminos" />
            &nbsp;&nbsp;
            <br />
            <strong>y Condiciones</strong><br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="btnAceptar" runat="server" OnClick="Button1_Click" Text="Aceptar" Width="115px" Font-Bold="True" ForeColor="#000066" />
            <br />
        </div>
    </form>
</body>
</html>
