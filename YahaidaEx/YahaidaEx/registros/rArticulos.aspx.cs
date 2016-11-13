using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace YahaidaEx.registros
{
    public partial class rArticulos : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Utilitarios.ShowToastr(Page, "No Existe dicho registro", "ERROR", "error");

            Articulos art = new Articulos();
            RepArticulos.DataSource = art.Listado();
            RepArticulos.DataBind();
        }

        protected void BtnGuardarArticulos_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            art.Descripcion = TxBxDescripcion.Text;
            art.Existencia = Convert.ToInt32(txtExistencia.Text);
            art.Precio = Convert.ToDecimal(txtPrecio.Text);
            art.Insertar();
        }

        protected void btnBuscarArticulos_Click(object sender, EventArgs e)
        {
            LimpiaCampos();
            Articulos art = new Articulos();
            
            if(txtId.Text != string.Empty)
            if (art.Buscar(Convert.ToInt32(txtId.Text)))
            {                
                TxBxDescripcion.Text = art.Descripcion;
                txtExistencia.Text = art.Existencia.ToString();
                txtPrecio.Text = art.Precio.ToString();
            }
            else {
                Utilitarios.ShowToastr(this, "No Existe dicho registro", "ERROR", "error");
                
            }
        }

        void LimpiaCampos() {
            TxBxDescripcion.Text = txtExistencia.Text = txtPrecio.Text = string.Empty;
        }

        protected void RepArticulos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            txtId.Text = e.CommandName;

            if (e.CommandName == "cmdSel")
            {
                LimpiaCampos();
                Articulos art = new Articulos();
                
                art.Buscar(Convert.ToInt32(e.CommandArgument));                    
                TxBxDescripcion.Text = art.Descripcion;
                txtExistencia.Text = art.Existencia.ToString();
                txtPrecio.Text = art.Precio.ToString();
                    
            }
        }

        protected void LinkButtonEliminarArticulo_Click(object sender, EventArgs e)
        {
            LimpiaCampos();
            Articulos art = new Articulos();
            art.ArticulosId = Convert.ToInt32(txtId.Text);
            art.Eliminar();
            Utilitarios.ShowToastr(this, "No Existe dicho registro", "ERROR", "error");
        }

        protected void btnEditarArticulos_Click(object sender, EventArgs e)
        {

        }
    }
}