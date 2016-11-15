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
        Ventas vn = new Ventas();
        VentasDetalle vtD = new VentasDetalle();

        DataTable dtArt;
        DataColumn dc;
        DataRow dr;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            // txtFecha.Text = DateTime.Now.ToString("MM-dd-yy");
            //GvDetalle.DataSource = vn.Listado();
            //GvDetalle.DataBind();

            txtFecha.Text = DateTime.Now.ToString();

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            //int VentId;

            //vn.Monto=Convert.ToInt32(txtMonto.Text);
            //vn.Fecha = Convert.ToDateTime(txtFecha.Text);
            //vn.Insertar();
            //VentId= vn.VentasId;

            //GvDetalle.DataSource = vn.Listado();
            //GvDetalle.DataBind();


            datatablesesion();
            dr["ArticuloId"] =  Convert.ToInt32(DdLstArticulos.SelectedValue);
            dr["Descripcion"] = HidDescArtic.Value;
            dr["Cantidad"] = Convert.ToInt32(TxBxCantidad.Text);
            dr["Precio"] = Decimal.Parse(txtPrecio.Text);

            decimal precio;
            int cant;

            cant = Int32.Parse(TxBxCantidad.Text);
            precio = Decimal.Parse(txtPrecio.Text);

            decimal importe = cant * precio;

            dr["Importe"] = importe;

            Session["total"] =  Convert.ToDecimal(Session["total"])  +  importe;

            dtArt.Rows.Add(dr);

            GvDetalle.DataSource = dtArt;
            GvDetalle.DataBind();
            txtMonto.Text = Session["total"].ToString();

        }

        protected void DdLstArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            if (art.Buscar(Convert.ToInt32(DdLstArticulos.SelectedValue)))
            {
                TxBxExistencia.Text = art.Existencia.ToString();
                txtPrecio.Text = art.Precio.ToString();
                HidDescArtic.Value = art.Descripcion;
            }
        }

        void datatablesesion()
        {
            if (Session["dtable"] == null)
            {
                dtArt = new DataTable("VentasDetalles");
                dc = new DataColumn();

                dc.DataType = System.Type.GetType("System.Int32");
                dc.ColumnName = "ChildID";
                dc.AutoIncrement = true;
                dc.Caption = "IdDT";
                dc.ReadOnly = true;
                dc.Unique = true;
                dc.AutoIncrement = true;

                dc.DataType = Type.GetType("System.Int32");
                dc.ColumnName = "ArticuloId";
                dc.Caption = "ArticuloId";
                dtArt.Columns.Add(dc);


                dc = new DataColumn();
                dc.DataType = Type.GetType("System.String");
                dc.ColumnName = "Descripcion";
                dc.Caption = "Descripcion";
                dtArt.Columns.Add(dc);

                dc = new DataColumn();
                dc.DataType = Type.GetType("System.Int32");
                dc.ColumnName = "Cantidad";
                dc.Caption = "Cantidad";
                dtArt.Columns.Add(dc);


                dc = new DataColumn();
                dc.DataType = Type.GetType("System.Decimal");
                dc.ColumnName = "Precio";
                dc.Caption = "Precio";
                dtArt.Columns.Add(dc);

                dc = new DataColumn();
                dc.DataType = Type.GetType("System.Decimal");
                dc.ColumnName = "Importe";
                dc.Caption = "Importe";
                dtArt.Columns.Add(dc);

                dr = dtArt.NewRow();

                Session["dtable"] = dtArt;
            }
            else
            {
                dtArt = (DataTable)Session["dtable"];
                dr = dtArt.NewRow();
            }

            GvDetalle.DataSource = dtArt;
        }

        protected void btnGuardarVentas_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            Ventas vent = new Ventas();
            VentasDetalle ventDetall = new VentasDetalle();

            vent.Monto = Convert.ToDecimal(Session["total"]);

            //vent.Fecha = Convert.ToDateTime(txtFecha.Text);

            if (vent.Insertar())
            {
             foreach (DataRow r in dtArt.Rows)
                {
                    ventDetall.ArticuloId = Convert.ToInt32(r["ArticuloId"]);
                    ventDetall.Ventaid = vent.VentasId;
                    ventDetall.Cantidad = Convert.ToInt32(r["Cantidad"]);
                    ventDetall.Precio = Convert.ToDecimal(txtPrecio.Text);
                    
                    if (vent.Insertar())
                    {
                        art.reduceExistencia(Convert.ToInt32(r["ArticuloId"]), Convert.ToInt32(r["Cantidad"])); 
                    }
                }
            }


          
        }

        protected void TxBxCantidad_TextChanged(object sender, EventArgs e)
        {
            int cant = Convert.ToInt32(TxBxCantidad.Text);
            int maxim = Convert.ToInt32(TxBxExistencia.Text);

            if (cant > maxim)
            {
                Utilitarios.ShowToastr(Page,"No puedes exceder el limite de: " + maxim, "Limite Excedido", "error");
                TxBxCantidad.Text = maxim.ToString();
            }
        }
    }

}

