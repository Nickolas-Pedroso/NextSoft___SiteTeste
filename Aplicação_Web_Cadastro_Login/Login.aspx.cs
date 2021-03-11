using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicação_Web_Cadastro_Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            BasedeDadosDataContext bd = new BasedeDadosDataContext();
            try
            {
                var lon = (from lo in bd.cadastro
                           where lo.cpf == Textcpf.Text.Trim()
                           && lo.email == Textemail.Text.Trim()
                           select lo);

                if (lon.Count() > 0)
                {
                    Server.Transfer("~/Consulta.aspx");
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                    lblStatus.Text = "Erro ao efetuar o Login ou não possuí cadastro";
                }

            }
            catch(Exception)
            {
            }
           

        }
    }
}