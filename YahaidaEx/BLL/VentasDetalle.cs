using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class VentasDetalle : ClaseMaestra
    {
        public int Id { get; set; }
        public int Ventaid{ get; set; }

        public int ArticuloId { get; set; }
        public int Cantidad{ get; set; }
        public Decimal Precio{ get; set; }

        public VentasDetalle()
        {
            Id = 0;
            Ventaid = 0;
            ArticuloId = 0;
            Cantidad = 0;
            Precio = 0m;
        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("insert into VentasDetalle(Ventaid, ArticuloId,Cantidad,Precio) values({0},{1},{2},{3})SELECT @@IDENTITY",Ventaid, ArticuloId, Cantidad, Precio);
            Id= Convert.ToInt32(conexion.ObtenerValorDb(sql).ToString());
            return Id > 0;
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
            return conexion.BuscarDb("Select" + Campos + "from VentasDetalle where " + Condicion + " order by Id " + Orden);
        }
}
}
