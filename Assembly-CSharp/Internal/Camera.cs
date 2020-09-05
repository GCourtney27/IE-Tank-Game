using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Internal
{
    class ViewTarget
    {
        public Vector3 Position = new Vector3(0.0f);
        public Vector3 Rotation = new Vector3(0.0f);
        public float FieldOfView = 60.0f;
        public float Sensitivity = 0.2f;
        public float Speed = 30.0f;
        public float Exposure = 0.5f;
        public float NearZ = 0.0001f;
        public float FarZ = 1000.0f;
    }

    class Camera
    {
        ViewTarget m_ViewTarget;


        public Camera() { }

        void SetViewTarget(ViewTarget NewVewTarget)
        {
            m_ViewTarget = NewVewTarget;
        }

        void LookAt(Vector3 LookAtPoint)
        {

        }
    }
}
