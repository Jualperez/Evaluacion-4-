using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PuntoDeCargaDinamico.DAL
{
    public class RegionDAL
    {
        public EstacionServicioEntities dbEntitiesR = new EstacionServicioEntities();
        public List<Region> GetAll()
        {
            return dbEntitiesR.Region.ToList();
        }
    }
}
