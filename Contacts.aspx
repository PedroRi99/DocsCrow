<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="ProjetoFinal.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="css/Contacts.css" />
 <DOCTYPE html>
    <html>
        <script runat="server" language="C#">
            void MyButton_OnClick(Object sender, EventArgs e)
            {
                string nome, email, assunto, mensagem;
                nome = FormNome.Text;
                email = FormEmail.Text;
                assunto = FormAssunto.Text;
                mensagem = FormMsg.Text;
             
            }
        </script>
        
        <body>
            <div class="caixa">
                <form id="form1" runat="server">
                <h1>Faça Contato</h1>
                    <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>
                      <p>
                          Seu Nome: <asp:TextBox ID="FormNome" runat="server"></asp:TextBox>
                      </p>
                    <p>
                         Seu Email: <asp:TextBox ID="FormEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </p>
                    <p>
                        Assunto:&nbsp;&nbsp; <asp:TextBox ID="FormAssunto" runat="server" BorderColor="Black"></asp:TextBox>
                    </p>
                    <p>
                        Mensagem: <asp:TextBox ID="FormMsg" runat="server"></asp:TextBox>
                    </p>
                    <p>
                    <asp:button CssClass="botao"  ID="MyButton" Text="Enviar" OnClick="MyButton_Click" runat="server"></asp:button> 
                    </p>
                   
                </form>
                </div>
            <h2>Perguntas frequentes:</h2>
            <hr />
            <h3>Como editar documentos?</h3>
            <p>Para que ocorra a edição de documentos será preciso uma conta com permissão de administrador e assim será possível modificar qualquer informação contida no arquivo.</p>
            <hr />
            <h2>Quais documentos são compatíveis:</h2>
            <ul>
                <li>Documentos de texto: PDF, xlsx; .docx;</li>
                <li>Imagens: JPEG, JPG, PNG.</li>
            </ul>
            <hr />
            <h3>Como apagar e baixar os documentos?</h3>
            <p>Na aba gerenciar, após fazer o upload de um arquivo, você poderá baixar o arquivo no botão “Download” e apagar o documento na opção “Deletar”;</p>
            <hr />
            <h3>Como enviar documentos?</h3>
            <p>Será possível enviar todos os documentos para o banco de dados, para ficar salvo e seguro, após ter selecionado o documento que deseja, clique no botão enviar.</p>
        </body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </html>
</asp:Content>
