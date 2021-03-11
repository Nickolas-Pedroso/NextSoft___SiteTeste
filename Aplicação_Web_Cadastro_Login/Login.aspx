<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aplicação_Web_Cadastro_Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" type="text/css" href="Styles/Testelogin.css" media="screen"/>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
            
        <div class="box">
            
              <!-- Tela de Login-->
             <h1>Login</h1>
            
            <div>
            
           <asp:Label ID="lblEmail" runat="server" Text="E-mail:">Informe seu e-mail</asp:Label>
            <asp:TextBox ID="Textemail" runat="server" Width="313px" Height="50px"></asp:TextBox>
            </div>
            
            <div> 
            <asp:Label ID="lblCpf" runat="server" Text="E-mail:">Informe seu CPF</asp:Label>
            <asp:TextBox ID="Textcpf" runat="server" Width="313px" Height="50px"></asp:TextBox>
            </div>         
            
            <div > 
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="235px" Height="39px"/>
            </div>

            <div class="singup_link">
                   Não é um membro? <a href="https://localhost:44325/cadastro.aspx">Cadastrar-se</a>
                </div>
                

             <div>
                 <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </div>

        </div>       
        </form>
</body>
</html>
