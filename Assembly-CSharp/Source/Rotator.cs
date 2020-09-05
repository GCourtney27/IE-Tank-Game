using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Internal;


namespace InsightEngine
{
    class Rotator : ScriptableBehavior
    {
        // Called when game started or when spawned
        void BeginPlay()
        {
            //Camera camera = World.GetCamera();
            //ViewTarget viewTarget = new ViewTarget();
            
            Console.WriteLine("Hello!");
            //Console.WriteLine("New Hello!");
            //Console.WriteLine(this.Transform.ToString());
        }

        // Called once per frame
        void Tick(double deltaMs)
        {
            float YOffset = (float)Math.Sin(1.0f * deltaMs);
            this.Transform.RotateActorPitchYawRoll(0.0f, YOffset, 0.0f);
        }
    }
}
