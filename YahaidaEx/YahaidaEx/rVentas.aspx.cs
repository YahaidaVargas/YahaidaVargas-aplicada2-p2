using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Web.SessionState;

namespace YahaidaEx
{
    public partial class rVentas : System.Web.UI.Page
    {
        Articulos Art = new Articulos();
            Ventas vn= new Ventas();
            VentasDetalle vtD = new VentasDetalle();
        protected void Page_Load(object sender, EventArgs e)
        {
         

            

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            int VentId;
      
            vn.Monto=Convert.ToInt32(txtMonto.Text);
            vn.Insertar();
            VentId= vn.VentasId;

            
           

        }
    }



}

