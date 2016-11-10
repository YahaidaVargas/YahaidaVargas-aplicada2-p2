using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace YahaidaEx
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ToastrButton_Click(object sender, EventArgs e)
        {
            Utilitarios.ShowToastr(Page, "Funciona", "Mensaje", "success");
        }
    }
}