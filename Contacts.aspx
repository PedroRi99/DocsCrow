<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="ProjetoFinal.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <script runat="server" lenguage="C#">
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
            <article>
                <h1>Faça Contato</h1>
                <form id="form1" runat="server">
                    <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>
                      <p>
                          Seu Nome: <asp:TextBox ID="FormNome" runat="server"></asp:TextBox>
                      </p>
                    <p>
                         Seu Email: <asp:TextBox ID="FormEmail" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        Assunto: <asp:TextBox ID="FormAssunto" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        Mensagem: <asp:TextBox ID="FormMsg" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:button ID="MyButton" Text="Enviar" OnClick="MyButton_Click" runat="server"></asp:button>
                    </p>
                </form>
            </article>

        </body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </html>
</asp:Content>
