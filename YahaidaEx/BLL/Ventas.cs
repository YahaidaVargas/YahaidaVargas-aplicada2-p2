using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Ventas : ClaseMaestra
    {
        public int  VentasId { get; set; }
        public DateTime Fecha { get; set; }
        public int Monto { get; set; }

        public Ventas()
        {
            VentasId = 0;
            Fecha = DateTime.Now;
            Monto = 0;
        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("insert into Ventas(Fecha, Monto) values({0},{1})SELECT @@IDENTITY", Fecha.ToString("dd-MM-yyy"), Monto);
            VentasId = Convert.ToInt32(conexion.ObtenerValorDb(sql).ToString());
            return VentasId > 0;
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

       

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "desc")
        {
            ConexionDb conexion = new ConexionDb();
            string sql = string.Format("SELECT {0} FROM Ventas WHERE {1} ORDER BY VentasID {2}", Campos, Condicion, Orden);
            return conexion.BuscarDb(sql);
        }
    }
}
