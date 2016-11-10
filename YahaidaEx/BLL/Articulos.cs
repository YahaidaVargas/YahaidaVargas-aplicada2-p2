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
        public int Precio { get; set; }

        public Articulos(){
            ArticulosId=0;
            Descripcion = "";
            Existencia = 0;
            Precio = 0;      
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
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

      
        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}









