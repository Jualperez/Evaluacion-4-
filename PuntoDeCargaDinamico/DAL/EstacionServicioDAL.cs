using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PuntoDeCargaDinamico.DAL
{
    public class EstacionServicioDAL
    {
        public EstacionServicioEntities dbEntitiesEt = new EstacionServicioEntities();

        public void Add(EstacionServicio et)
        {
            dbEntitiesEt.EstacionServicio.Add(et);
            dbEntitiesEt.SaveChanges();
        }

        public void Remove(String codigo)
        {
            EstacionServicio et = dbEntitiesEt.EstacionServicio.Find(codigo);
            dbEntitiesEt.EstacionServicio.Remove(et);
            dbEntitiesEt.SaveChanges();
        }
       
        public List<EstacionServicio> GetAll()
        {
            return dbEntitiesEt.EstacionServicio.ToList();
        }
     
        public List<EstacionServicio> GetAll(int numeroPuntos)
        {
            var query = from et in dbEntitiesEt.EstacionServicio
                        where et.NumeroDePuntos == numeroPuntos
                        select et;
            return query.ToList();
        }

       public void modificarEstacion(EstacionServicio et)
        {
            EstacionServicio EstacionOriginal = this.dbEntitiesEt.EstacionServicio.Find(et.Codigo);
            EstacionOriginal.Nombre = et.Nombre;
            EstacionOriginal.Codigo = Convert.ToString(et.Codigo);
            EstacionOriginal.Direccion = et.Direccion;
            EstacionOriginal.Region = et.Region;
            EstacionOriginal.NumeroDePuntos = et.NumeroDePuntos;

            this.dbEntitiesEt.SaveChanges();       


        }

       
    }
}
