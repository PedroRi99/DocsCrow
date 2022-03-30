<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ProjetoFinal.cadastro" %>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ProjetoFinal.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
          <title>Formulário de Login e Registro com HTML5 e CSS3</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <link rel="stylesheet" type="text/css" href="css/logincad.css" />

       <style>
    #aviso-cookie {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color:#4682B4;
    display: flex;
    height:5rem;
    font-size:20px;
    align-items:center;
    border-radius: 5px;
    justify-content: center;
}

    #aviso-cookie .text {
        width: 87%;
        margin-right: 3%;
        color: #fff;
        padding-left: 10px;
    }

    #aviso-cookie .button4 {
        display: flex;
        align-items: center;
        padding-right: 10px;
    }
        </style>

        <script>

                       let button = document.querySelector('#button')
                       let divAviso = document.querySelector('.aviso-cookie')

                       function button_onclick_Aceitar() {
                           document.getElementById("aviso-cookie").style.display = "none";
                           console.log('Estou Aqui');
                       }

</script>
</head>
<body>

  <div class="container" > 
      <br /><br /><br /><br /><br /><br /><br />
    <div class="content"> 
          
    
      <!--FORMULÁRIO DE CADASTRO-->
      <div id="cadastro">
        <form id="form1" runat="server">
          <h1>Cadastro</h1> 
           
          <p> 
            <label for="nome_cad">Nome</label>
              <asp:TextBox ID="tbNome" runat="server" placeholder="Digite seu nome"></asp:TextBox>
          </p>
           
          <p> 
            <label for="email_cad">E-mail</label>            
              <asp:TextBox ID="tbEmail" runat="server" placeholder="Digite seu E-mail"></asp:TextBox>
          </p>

            <p> 
            <label for="senha_cad">Senha</label>            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" placeholder="Digite sua senha"></asp:TextBox>
          </p>

          <p>
              <asp:Button ID="btCadastrar" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
          </p>
           
          <p class="link">  
            Já tem conta?
            <a href="login.aspx"> Ir para Login </a>
          </p>
        </form>
          <div id="aviso-cookie">
      <div class="text">
         <p>Clicando em "Aceito todos os cookies", você concorda com o armazenamento de cookies no seu dispositivo para melhorar a experiência e navegação no site.</p>
      </div>
      <div class="button">
          <button id="Button4" onclick="button_onclick_Aceitar()">Aceitar </button>
      </div>
      </div>
    </div>
  </div>

</body>
</html>
