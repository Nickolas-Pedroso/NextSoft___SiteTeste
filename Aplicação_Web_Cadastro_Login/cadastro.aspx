<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="Aplicação_Web_Cadastro_Login.cadastro1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <link rel="stylesheet" type="text/css" href="Styles/Estilos.css" media="screen" />
     <link rel="stylesheet" type="text/css" href="Styles/Testecadastro.css" media="screen" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

       <div class="header">
                <h1>Aplicação Web</h1>
                <p>Teste de avaliação de construção de codigo em ASP.NET</p>
       </div>

       <div class="topnav">
              <a href="https://localhost:44325/Login.aspx">Login</a>
              <a href="https://localhost:44325/cadastro.aspx">Cadastro</a>
      </div>


        <div class="box">
            
            <!--Tela de Cadastro-->
            <div style="margin-left: 200px">
            <asp:Label ID="Label1" runat="server" Text="Digite o seu CPF:"></asp:Label>
            <asp:TextBox ID="Textcpf" runat="server" Width="475px" placeholder="CPF"></asp:TextBox>
            </div>  

            <div style="margin-left: 200px">
            <asp:Label ID="Label3" runat="server" Text="Digite o seu nome:"></asp:Label>
            <asp:TextBox ID="Textnome" runat="server" Width="475px" placeholder="Nome Completo" style="margin-left: 0px"></asp:TextBox>
            </div>  

            <div style="margin-left: 200px">
            <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
            <asp:TextBox ID="Text_Email" runat="server" Width="475px" placeholder="ex: xxx@xxx.com"></asp:TextBox>
            </div>
          
            <div style="margin-left: 200px">
                <asp:Label ID="Label8" runat="server" Text="Telefone:"></asp:Label>
                <asp:TextBox ID="Text_Telefone" runat="server" Width="475px" placeholder="não é necessário caracteres especiais" style="margin-left: 0px"></asp:TextBox>
            </div>

            <div style="margin-left: 200px">
            <asp:Label ID="Label4" runat="server" Text="Rua:"></asp:Label>
            <asp:TextBox ID="Textendereco" runat="server" Width="475px" placeholder="Endereço" style="margin-left: 0px"></asp:TextBox>
            </div>         

            <div style="margin-left: 200px">
            <asp:Label ID="Label6" runat="server" Text="Logradouro:"></asp:Label>
            <asp:TextBox ID="Textlogradouro" runat="server" Width="475px" placeholder="Logradouro ex: avenida" style="margin-left: 0px"></asp:TextBox>
            </div>  

            <div style="margin-left: 200px">
            <asp:Label ID="Label11" runat="server" Text="Número da residencia:"></asp:Label>
            <asp:TextBox ID="Text_Num" runat="server" Width="475px" placeholder="Numero"></asp:TextBox>            
            </div>
            
            <div style="margin-left: 200px">
            <asp:Label ID="Label12" runat="server" Text="Complemento:"></asp:Label>
            <asp:TextBox ID="Text_Comp" runat="server" Width="475px" placeholder="Complemento ex: casa1" style="margin-left: 0px"></asp:TextBox>            
            </div>

             <div style="margin-left: 200px">
            <asp:Label ID="Label7" runat="server" Text="Bairro:"></asp:Label>
            <asp:TextBox ID="Textbairro" runat="server" Width="475px" placeholder="Bairro"></asp:TextBox>            
            </div>

             <div style="margin-left: 200px">
            <asp:Label ID="Label9" runat="server" Text="Cidade:"></asp:Label>
            <asp:TextBox ID="Textcidade" runat="server" Width="475px" placeholder="Cidade"></asp:TextBox>            
            </div>

             <div style="margin-left: 200px">
            <asp:Label ID="Label10" runat="server" Text="Estado:"></asp:Label>
            <asp:TextBox ID="Textestado" runat="server" Width="475px" placeholder="Estado"></asp:TextBox>            
            </div>

            <div style="margin-left: 200px">
            <asp:Label ID="Label5" runat="server" Text="Tipo de Endereço:"></asp:Label>
            <asp:TextBox ID="Text_Tipoend" runat="server" Width="475px" placeholder="ex: Geral,Cobrança ou Entrega"></asp:TextBox>
            </div>  

            <!--botão Cadastrar-->

            <div style="margin-left: 280px">
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" Width="300px" />
            </div>

            <div>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>    
            </div>
            

        </div>
    </form>
</body>
</html>
