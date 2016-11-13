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

            // txtFecha.Text = DateTime.Now.ToString("MM-dd-yy");
            GvDetalle.DataSource = vn.Listado();
            GvDetalle.DataBind();

            Articulos art = new Articulos();
            DdLstArticulos.DataSource = art.Listado();
            DdLstArticulos.DataBind();

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            int VentId;
      
            vn.Monto=Convert.ToInt32(txtMonto.Text);
            vn.Fecha = Convert.ToDateTime(txtFecha.Text);
            vn.Insertar();
            VentId= vn.VentasId;


            GvDetalle.DataSource = vn.Listado();
            GvDetalle.DataBind();

        }

        protected void DdLstArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                Articulos art = new Articulos();
                TxBxExistencia.Text = "";
                Utilitarios.ShowToastr(Page, DdLstArticulos.SelectedValue.ToString(), "Informacion", "success");
                if (art.Buscar(Convert.ToInt32(DdLstArticulos.SelectedValue)))
                {
                    TxBxExistencia.Text = art.Existencia.ToString();
                    txtPrecio.Text = art.Precio.ToString();
                }
            
        }

        protected void DdLstArticulos_TextChanged(object sender, EventArgs e)
        {
            
                //Articulos art = new Articulos();
                //TxBxExistencia.Text = "";
                //Utilitarios.ShowToastr(Page, DdLstArticulos.SelectedValue.ToString(), "Informacion", "success");
                //if (art.Buscar(Convert.ToInt32(DdLstArticulos.SelectedValue)))
                //{
                //    TxBxExistencia.Text = art.Existencia.ToString();
                //    txtPrecio.Text = art.Precio.ToString();
                //}
            
        }
    }



}

