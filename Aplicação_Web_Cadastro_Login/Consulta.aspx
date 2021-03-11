<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Aplicação_Web_Cadastro_Login.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link rel="stylesheet" type="text/css" href="Styles/Estilos.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="Styles/Testeconsulta.css" media="screen" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aplicação Web</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="header">
                <h1>Aplicação Web</h1>
                <p>Teste de avaliação de construção de codigo em ASP.NET</p>
       </div>

       <div class="topnav">
              <a href="https://localhost:44325/Consulta.aspx">Consulta</a>
              <a href="https://localhost:44325/Login.aspx" style="float:right">Sair</a>
      </div>


        <div  class="box">
          <div class="column side">
            <asp:Label ID="lblCpf"   runat="server" Width="140px" Text="E-mail:">Informe seu CPF</asp:Label>
            <asp:TextBox ID="Textcpf" runat="server" Width="313px" Height="20px"></asp:TextBox>
            <asp:Button ID="btnConsulta0" runat="server" Text="Login" OnClick="btnLogin_Click" Width="140px" Height="39px"/>
              <br />
              <br />
             <asp:Label ID="Label" runat="server" Width="300px" Height="39px" Text="">Ao apertar o botão excluir, seu cadastro irá ser apagado.</asp:Label>
             <asp:Button ID="BtnExcluir" runat="server" Text="Excluir" OnClick="btnExcluir_Click" Width="140px" Height="39px"/>
       </div>
        </div>


         <div class="column middle">
            <!--Aqui sera exibido as informações do cliente-->
                <h2>Informações do cliente</h2>
                <div>
                    <asp:Label ID="lblCpfs"   runat="server" Text="CPF:"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
           <br />
                <div>
                    <asp:Label ID="lblNome"   runat="server" Text="Nome:"></asp:Label>
                    <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                </div>
           <br />
                <div>
                    <asp:Label ID="lblEmails"   runat="server" Text="E-mail:"></asp:Label>
                    <asp:GridView ID="GridView3" runat="server"></asp:GridView>
                </div>
           <br />
                <div>
                    <asp:Label ID="lblTelfone"   runat="server" Text="Telefone:"></asp:Label>
                    <asp:GridView ID="GridView4" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblEndereço"   runat="server" Text="Endereço:"></asp:Label>
                    <asp:GridView ID="GridView5" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblLogradouro"   runat="server" Text="Logradouro:"></asp:Label>
                    <asp:GridView ID="GridView6" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblNumero"   runat="server" Text="Número:"></asp:Label>
                    <asp:GridView ID="GridView7" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblComplemento"   runat="server" Text="Complemento:"></asp:Label>
                    <asp:GridView ID="GridView8" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblBairro"   runat="server" Text="Bairro:"></asp:Label>
                    <asp:GridView ID="GridView9" runat="server"></asp:GridView>
                </div>
           <br /> 
                <div>
                    <asp:Label ID="lblCidade"   runat="server" Text="Cidade:"></asp:Label>
                    <asp:GridView ID="GridView10" runat="server"></asp:GridView>
                </div>
           <br />  
                <div>
                    <asp:Label ID="lblEstado"   runat="server" Text="Estado:"></asp:Label>
                    <asp:GridView ID="GridView11" runat="server"></asp:GridView>
                </div>
           <br />
                <div>
                    <asp:Label ID="lblTipoDeEndereço"   runat="server" Text="Tipo de Endereço:"></asp:Label>
                    <asp:GridView ID="GridView12" runat="server"></asp:GridView>
                </div>

      </div>

        <div class="column side">
        <div class="box">
        </div>
        </div>
    </form>
</body>
</html>
