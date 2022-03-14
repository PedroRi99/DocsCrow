<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="ProjetoFinal.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/logincad.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    
  <div class="container" >
    <a class="links" id="paracadastro"></a>
    <a class="links" id="paralogin"></a>
     
    <div class="content">      
      <!--FORMULÁRIO DE LOGIN-->
      <div id="login">
        <form id="form1" runat="server">
          <h1>Login</h1> 
          <p> 
            <label for="tbEmail">Seu e-mail</label>            
              <asp:TextBox ID="tbEmail" Text="Digite seu E-mail" runat="server"></asp:TextBox>
          </p>
           
          <p> 
            <label for="tbSenha">Sua Senha</label>
            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
          </p>
           
          <p> 
            <input type="checkbox" name="manterlogado" id="manterlogado" value="" /> 
            <label for="manterlogado">Manter-me logado</label>
          </p>
           
          <p> 
            <asp:Button ID="btnupdate" runat="server" Text="Atualizar" OnClick="btnUpdate_Click" /> 
          </p>

</asp:Content>
