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
        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("insert into Ventas(Fecha, Monto) values({0},{1})SELECT @@IDENTITY", Fecha.ToString("yyy-MM-dd"), Monto);
            VentasId = Convert.ToInt32(conexion.ObtenerValorDb(sql).ToString());
            return VentasId > 0;
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
