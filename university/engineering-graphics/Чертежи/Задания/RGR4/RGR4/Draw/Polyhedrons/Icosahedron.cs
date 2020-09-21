using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Autodesk.AutoCAD.Geometry;


namespace RGR4.Draw.Polyhedrons
{
    public class Icosahedron : Polyhedron
    {
        public Icosahedron(Point3d center, double edge)
        {
            //double t1 = 2.0 * Math.PI / 5;
            double t2 = Math.PI / 10.0;
            double t4 = Math.PI / 5.0;
            //double t3 = -3.0 * Math.PI / 10.0;
            double R = (edge / 2.0) / Math.Sin(t4);
            double H = Math.Cos(t4) * R;
            double Cx = R * Math.Sin(t2);
            double Cz = R * Math.Cos(t2);
            double H1 = Math.Sqrt(edge * edge - R * R);
            double H2 = Math.Sqrt((H + R) * (H + R) - H * H);
            double Y2 = (H2 - H1) / 2.0;
            double Y1 = Y2 + H1;

            Vertices = new Point3dCollection
            {
                new Point3d (center.X, center.Y + Y1, center.Z),
                new Point3d(center.X + R, center.Y + Y2, center.Z),
                new Point3d(center.X + Cx, center.Y + Y2, center.Z + Cz),
                new Point3d(center.X + -H, center.Y + Y2, center.Z + edge / 2),
                new Point3d(center.X + -H, center.Y + Y2, center.Z + -edge / 2),
                new Point3d(center.X + Cx, center.Y + Y2, center.Z + -Cz),
                new Point3d(center.X + -R, center.Y + -Y2, center.Z),
                new Point3d(center.X + -Cx, center.Y + -Y2, center.Z + -Cz),
                new Point3d(center.X + H, center.Y + -Y2, center.Z + -edge / 2),
                new Point3d(center.X + H, center.Y + -Y2, center.Z + edge / 2),
                new Point3d(center.X + -Cx, center.Y + -Y2, center.Z + Cz),
                new Point3d(center.X, center.Y + -Y1, center.Z)
            };

            Faces = new List<short[]>
            {
                new short[]{1, 2, 3, 0},
                new short[]{3, 4, 1, 0},
                new short[]{4, 5, 1, 0},
                new short[]{5, 6, 1, 0},
                new short[]{6, 2, 1, 0},

                new short[]{2, 3, 10, 0},
                new short[]{3, 10 ,11, 0},
                new short[]{3, 11, 4, 0},
                new short[]{11, 4, 7, 0},
                new short[]{7, 4, 5, 0},
                new short[]{7, 5, 8, 0},
                new short[]{5, 8, 6, 0},
                new short[]{8, 6, 9, 0},
                new short[]{6, 9, 2, 0},
                new short[]{2, 9, 10, 0},

                new short[]{10, 11, 12, 0},
                new short[]{11, 12, 7, 0},
                new short[]{7, 8, 12, 0},
                new short[]{8, 9, 12, 0},
                new short[]{9, 10, 12, 0}
            };
        }

        public Icosahedron(Point3dCollection vertices)
        {
            Vertices = vertices;

            Faces = new List<short[]>
            {
                new short[]{1, 2, 3, 0},
                new short[]{3, 4, 1, 0},
                new short[]{4, 5, 1, 0},
                new short[]{5, 6, 1, 0},
                new short[]{6, 2, 1, 0},

                new short[]{2, 3, 10, 0},
                new short[]{3, 10 ,11, 0},
                new short[]{3, 11, 4, 0},
                new short[]{11, 4, 7, 0},
                new short[]{7, 4, 5, 0},
                new short[]{7, 5, 8, 0},
                new short[]{5, 8, 6, 0},
                new short[]{8, 6, 9, 0},
                new short[]{6, 9, 2, 0},
                new short[]{2, 9, 10, 0},

                new short[]{10, 11, 12, 0},
                new short[]{11, 12, 7, 0},
                new short[]{7, 8, 12, 0},
                new short[]{8, 9, 12, 0},
                new short[]{9, 10, 12, 0}
            };
        }
    }
}
