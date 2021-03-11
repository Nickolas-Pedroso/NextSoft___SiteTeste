using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicação_Web_Cadastro_Login
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            BasedeDadosDataContext bd = new BasedeDadosDataContext();

            var lon = (from lo in bd.cadastro
                       where lo.cpf == Textcpf.Text.Trim()
                       select lo);

            //PRIMEIRO GRID
            string doc = Textcpf.Text;
            var cpessoal = from ct in bd.cadastro
                           where ct.cpf.Contains(doc)
                           select new
                           {
                               ct.cpf,
                           };

            GridView1.DataSource = cpessoal;
            GridView1.DataBind();
            lblCpfs.Text = "";

            //SEGUNDO GRID

            var cpessoal1 = from ct1 in bd.cadastro
                            where ct1.cpf.Contains(doc)
                            select new
                            {
                                ct1.nome,
                            };

            GridView2.DataSource = cpessoal1;
            GridView2.DataBind();

            //TERCEIRO GRID

            var cpessoal2 = from ct2 in bd.cadastro
                            where ct2.cpf.Contains(doc)
                            select new
                            {
                                ct2.email
                            };
            GridView3.DataSource = cpessoal2;
            GridView3.DataBind();

            // 4

            var cpessoal3 = from ct3 in bd.cadastro
                            where ct3.cpf.Contains(doc)
                            select new
                            {
                                ct3.telefone
                            };
            GridView4.DataSource = cpessoal3;
            GridView4.DataBind();

            // 5

            var cpessoal4 = from ct4 in bd.cadastro
                            where ct4.cpf.Contains(doc)
                            select new
                            {
                                ct4.endereco
                            };
            GridView5.DataSource = cpessoal4;
            GridView5.DataBind();


            //6
            var cpessoal5 = from ct5 in bd.cadastro
                            where ct5.cpf.Contains(doc)
                            select new
                            {
                                ct5.logradouro
                            };
            GridView6.DataSource = cpessoal5;
            GridView6.DataBind();

            //7
            var cpessoal6 = from ct6 in bd.cadastro
                            where ct6.cpf.Contains(doc)
                            select new
                            {
                                ct6.numero
                            };
            GridView7.DataSource = cpessoal6;
            GridView7.DataBind();

            //8
            var cpessoal7 = from ct7 in bd.cadastro
                            where ct7.cpf.Contains(doc)
                            select new
                            {
                                ct7.complemento
                            };
            GridView8.DataSource = cpessoal7;
            GridView8.DataBind();

            //9
            var cpessoal8 = from ct8 in bd.cadastro
                            where ct8.cpf.Contains(doc)
                            select new
                            {
                                ct8.bairro
                            };
            GridView9.DataSource = cpessoal8;
            GridView9.DataBind();

            //10
            var cpessoal9 = from ct9 in bd.cadastro
                            where ct9.cpf.Contains(doc)
                            select new
                            {
                                ct9.cidade
                            };
            GridView10.DataSource = cpessoal9;
            GridView10.DataBind();

            //11
            var cpessoal10 = from ct10 in bd.cadastro
                             where ct10.cpf.Contains(doc)
                             select new
                             {
                                 ct10.estado
                             };
            GridView11.DataSource = cpessoal10;
            GridView11.DataBind();

            //12
            var cpessoal11 = from ct11 in bd.cadastro
                             where ct11.cpf.Contains(doc)
                             select new
                             {
                                 ct11.tipo_end
                             };
            GridView12.DataSource = cpessoal11;
            GridView12.DataBind();




        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            BasedeDadosDataContext bd = new BasedeDadosDataContext();
            string doc = Textcpf.Text;

            try
            {
                var Delete = (from d in bd.cadastro
                              where d.cpf.Contains(doc)
                              select d).Single();
                bd.cadastro.DeleteOnSubmit(Delete);
                bd.SubmitChanges();
                Server.Transfer("~/Login.aspx");

            }
            catch(InvalidOperationException)
            {

            }
            
        }
    }
}