using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PuntoDeCargaDinamico.DAL
{
   public class TipoDAL
    {
        public EstacionServicioEntities dbEntitiesT = new EstacionServicioEntities();
        public List<Tipo> GetAll()
        {
            return dbEntitiesT.Tipo.ToList();
        }
    }
}
