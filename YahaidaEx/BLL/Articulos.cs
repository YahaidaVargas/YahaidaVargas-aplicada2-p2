using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Articulos : ClaseMaestra
    {
        public int ArticulosId { get; set; }
        public string Descripcion { get; set; }
        public int Existencia { get; set; }
        public Decimal Precio { get; set; }

        public Articulos(){
            ArticulosId=0;
            Descripcion = "";
            Existencia = 0;
            Precio = 0m;      
            }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("insert into Articulos(Descripcion, Existencia,Precio) values('{0}','{1}',{2})SELECT @@IDENTITY", Descripcion,Existencia,Precio);
            ArticulosId = Convert.ToInt32(conexion.ObtenerValorDb(sql).ToString());
            return ArticulosId > 0;


        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Articulos WHERE ArticuloId = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                ArticulosId = Convert.ToInt32(dt.Rows[0]["ArticuloId"]);
                Descripcion = dt.Rows[0]["Descripcion"].ToString();
                Existencia = Convert.ToInt32(dt.Rows[0]["Existencia"]);
                Precio  = Convert.ToDecimal(dt.Rows[0]["Precio"]);
            }
            
            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Articulos SET Descripcion = '{0}', Existencia = {1}, Precio = {2} WHERE ArticuloId = {3}",Descripcion, Existencia, Precio, ArticulosId);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Articulos WHERE ArticuloId = {0}", ArticulosId);
            return conexion.EjecutarDB(sql);
        }

      
        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "DESC")
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT {0} FROM Articulos WHERE {1} ORDER BY ArticuloId {2}", Campos, Condicion, Orden);
            return conexion.BuscarDb(sql);
        }
    }
}









