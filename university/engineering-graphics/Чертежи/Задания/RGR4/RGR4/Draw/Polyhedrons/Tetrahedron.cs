using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Autodesk.AutoCAD.ApplicationServices;
using Autodesk.AutoCAD.DatabaseServices;
using Autodesk.AutoCAD.Geometry;

namespace RGR4.Draw.Polyhedrons
{
    public class Tetrahedron : Polyhedron
    {
        public Tetrahedron(Point3d center, double edge)
        {
            double height = edge * Math.Sqrt(2.0 / 3.0);
            double faceHeight = edge * Math.Sqrt(3.0) / 2.0;

            Vertices = new Point3dCollection
            {
                new Point3d(center.X + 0, center.Y + 0, center.Z + height / 2.0),
                new Point3d(center.X + 0, center.Y + faceHeight / 2.0, center.Z - height / 2.0),
                new Point3d(center.X + edge / 2.0, center.Y - faceHeight / 2.0, center.Z - height / 2.0),
                new Point3d(center.X - edge / 2.0, center.Y - faceHeight / 2.0, center.Z - height / 2.0)
            };

            Faces = new List<short[]>
            {
                new short[]{1, 2, 3, 0},
                new short[]{1, 3, 4, 0},
                new short[]{1, 4, 2, 0},
                new short[]{2, 3, 4, 0}
            };
        }

        public Tetrahedron(Point3dCollection points)
        {
            if (points.Count != 4) return;

            Vertices = points;

            Faces = new List<short[]>
            {
                new short[]{1, 2, 3, 0},
                new short[]{1, 3, 4, 0},
                new short[]{1, 4, 2, 0},
                new short[]{2, 3, 4, 0}
            };
        }
    }
}
