using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicação_Web_Cadastro_Login
{
    public partial class cadastro1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            BasedeDadosDataContext bd = new BasedeDadosDataContext();


            try
            {
                //RELAIZANDO O CADASTRO
                //int cpff = Convert.ToInt32(Textcpf.Text);
                int numerof = Convert.ToInt32(Text_Num.Text);
                

                cadastro usua = new cadastro();

                usua.cpf = Textcpf.Text;
                usua.email = Text_Email.Text;
                usua.nome = Textnome.Text;
                usua.telefone = Text_Telefone.Text;
                usua.endereco = Textendereco.Text;
                usua.logradouro = Textlogradouro.Text;
                usua.numero = numerof;
                usua.complemento = Text_Comp.Text;
                usua.bairro = Textbairro.Text;
                usua.cidade = Textcidade.Text;
                usua.estado = Textbairro.Text;
                usua.tipo_end = Text_Tipoend.Text;

                bd.cadastro.InsertOnSubmit(usua);
                bd.SubmitChanges();
                lblStatus.Text = "Cadastro efetuado com sucesso";
                
            }
            catch(InvalidOperationException)
            {
                lblStatus.Text = "Cadastro não foi efetuado, alguma informação foi inserida de forma incorreta";
            }
        }
    }
}