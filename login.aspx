<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoFinal.logincad" %>

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
    /*height:60px;*/
    /*font-size:20px;*/
    align-items:center;
    border-radius: 5px;
    padding: .5rem;
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
    #button{
     display:flex;
     justify-content:center ;
     place-items: center;
     height:100vh;
     background:#000;    
}
#Button4{
    width: 100px;
    height: 25px;
    font-weight: bold;
    font-size: 15px;
    border:none;
    border-radius:1000px;
    color:#4682B4;
    transition:all 0.6s ease-in-out 0s;
    box-shadow:inset 0 0 20px;
}
   #Button4:hover{
    color:#00ffcb;    
    box-shadow: 0 0 60px #0000ff;
    cursor: grab;
    border: 2px solid #274c77;
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
    
    
  <div class="container">
    <a class="links" id="paracadastro"></a>
    <a class="links" id="paralogin"></a>
      <br /><br /><br /><br /><br /><br /><br />

     
    <div class="content">
      <!--FORMULÁRIO DE LOGIN-->
       
      <div id="login">
        <form id="form1" runat="server">
          <h1>Acesse sua conta</h1> 
          <p> 
            <label for="tbEmail">Seu e-mail</label>            
              <asp:TextBox ID="tbEmail" runat="server" placeholder="Digite seu E-mail" TextMode="Email"></asp:TextBox>
          </p>
           
          <p> 
            <label for="tbSenha">Sua Senha</label>
            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" placeholder="Digite sua senha"></asp:TextBox><!-- TextMode="Password" -->
          </p>
           
          <p> 

            <asp:CheckBox ID="preserveLogin" runat="server" Text=" Mantenha-me logado." value="Manter-me logado"></asp:CheckBox>
          </p>
           
          <p> 
            <asp:Button ID="btnlogar" runat="server" Text="Logar" OnClick="btnlogar_Click" /> 
          </p>
           
        
             <div id="conta">
                <p class="link">Ainda não tem conta?</p>
                <a  href="cadastro.aspx"><p class="link">Cadastre-se</p></a>
            </div>
        </form>
          <div id="aviso-cookie">
      <div class="text">
         <p>Clicando em "Aceito todos os cookies", você concorda com o armazenamento de cookies no seu dispositivo para melhorar a experiência e navegação no site </p>
      </div>
      <div class="button">
          <button id="Button4" onclick="button_onclick_Aceitar()"><span style="color:#274c77"> Aceitar </span></button>
      </div>

      </div>

        </div>

  </div>
  
</body>
</html>
