using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PuntoDeCargaDinamico.DAL
{
   public class PuntoCargaDAL
    {
        public EstacionServicioEntities dbEntitiesPut = new EstacionServicioEntities();

        
        public void Add(PuntoCarga pt)
        {
            dbEntitiesPut.PuntoCarga.Add(pt);
            dbEntitiesPut.SaveChanges();
        }

        public void Remove(String codigo)
        {
            PuntoCarga pt = dbEntitiesPut.PuntoCarga.Find(codigo);
            dbEntitiesPut.PuntoCarga.Remove(pt);
            dbEntitiesPut.SaveChanges();
        }

        public List<PuntoCarga> GetAll()
        {
            return dbEntitiesPut.PuntoCarga.ToList();
        }

       public List<PuntoCarga> GetAll(int capacidadAutos)
        {
            var query = from pt in dbEntitiesPut.PuntoCarga
                        where pt.CapacidadAutos == capacidadAutos
                        select pt;
            return query.ToList();

        }
    }
}

