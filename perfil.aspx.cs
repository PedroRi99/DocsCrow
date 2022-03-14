using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String email = tbEmail.Text;
            String senha = tbSenha.Text;
            //
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from usuario where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                // Fez a leitura de todas as linha encontradas no banco
                registro.Read();
                //Cria o cookie do Login Com email
                string loginCookie = registro["email"].ToString();
                HttpCookie login = new HttpCookie("login", loginCookie);
                Response.Cookies.Add(login);

                //Cria o cookie do id do usuário
                string IdUserCookie = registro["Id_user"].ToString();
                HttpCookie IdUser = new HttpCookie("id_user", IdUserCookie);
                Response.Cookies.Add(IdUser);

                //string cookie = Request.Cookies["login"];

                //direcionar para a pagina principal
                Response.Redirect("~/index.aspx");
            }
        }
    }
}