using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public static class Seguridad
    {
        public static bool sesionActiva(object usuario)
        {
            User user = usuario != null ? (User)usuario : null;
            if (user != null && user.Id != 0)            
                return true;
            else
                return false;
        }

        public static bool esAdmin(object usuario)
        {
            User user = usuario != null ? (User)usuario : null;
            return user != null ? user.Admin : false;    
        }
    }
}
