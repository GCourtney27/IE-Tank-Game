using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internal
{
    class World
    {
        Camera m_Camera = null;
        
        private static World s_Instance = null;

        public World() 
        { 
            s_Instance = this;
            s_Instance.m_Camera = new Camera();
        }
        
        public static Camera GetCamera() { return s_Instance.m_Camera; }

    }
}
