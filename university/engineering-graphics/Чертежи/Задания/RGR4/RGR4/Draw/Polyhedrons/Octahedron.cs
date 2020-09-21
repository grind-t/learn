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
    public class Octahedron : Polyhedron
    {
        public Octahedron(Point3d center, double edge)
        {
            double squreDiagonal = edge * Math.Sqrt(2.0);
            double pyramidHeight = Math.Sqrt(Math.Pow(edge, 2.0) - Math.Pow(squreDiagonal / 2.0, 2.0));

            Vertices = new Point3dCollection
            {
                new Point3d(pyramidHeight + center.X, center.Y, center.Z),
                new Point3d(-pyramidHeight + center.X, center.Y, center.Z),
                new Point3d(center.X, center.Y + pyramidHeight, center.Z),
                new Point3d(center.X, center.Y + -pyramidHeight, center.Z),
                new Point3d(center.X, center.Y, center.Z + pyramidHeight),
                new Point3d(center.X, center.Y, center.Z + -pyramidHeight)
            };

            Faces = new List<short[]>
            {
                new short[]{5, 3, 1, 0},
                new short[]{3, 1, 6, 0},
                new short[]{5, 1, 4, 0},
                new short[]{4, 1, 6, 0},
                new short[]{5, 4, 2, 0},
                new short[]{4, 2, 6, 0},
                new short[]{2, 3, 5, 0},
                new short[]{2, 3, 6, 0}
            };
        }

        public Octahedron(Point3dCollection vertices)
        {
            if (vertices.Count != 6) return;

            Vertices = vertices;

            Faces = new List<short[]>
            {
                new short[]{1, 2, 3, 0},
                new short[]{1, 3, 4, 0},
                new short[]{1, 4, 5, 0},
                new short[]{1, 2, 5, 0},

                new short[]{6, 2, 3, 0},
                new short[]{6, 3, 4, 0},
                new short[]{6, 4, 5, 0},
                new short[]{6, 2, 5, 0}
            };
        }
    }
}
