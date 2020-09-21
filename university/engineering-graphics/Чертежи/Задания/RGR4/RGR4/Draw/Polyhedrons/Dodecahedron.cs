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
    public class Dodecahedron : Polyhedron
    {
        public Dodecahedron(Point3d center, double edge)
        {
            // Value t1 is actually never used.
            //double t1 = 2.0 * Math.PI / 5.0;
            double t2 = Math.PI / 10.0;
            double t3 = 3.0 * Math.PI / 10.0;
            double t4 = Math.PI / 5.0;
            double d1 = edge / 2.0 / Math.Sin(t4);
            double d2 = d1 * Math.Cos(t4);
            double d3 = d1 * Math.Cos(t2);
            double d4 = d1 * Math.Sin(t2);
            double Fx = (edge * edge - (2.0 * d3) * (2.0 * d3) - (d1 * d1 - d3 * d3 - d4 * d4)) / (2.0 * (d4 - d1));
            double d5 = Math.Sqrt(0.5 * (edge * edge + (2.0 * d3) * (2.0 * d3) - (d1 - Fx) * (d1 - Fx) - (d4 - Fx) * (d4 - Fx) - d3 * d3));
            double Fy = (Fx * Fx - d1 * d1 - d5 * d5) / (2.0 * d5);
            double Ay = d5 + Fy;

            Vertices = new Point3dCollection
            {
                new Point3d(center.X + d1, center.Y + Ay, center.Z),
                new Point3d(center.X + d4, center.Y + Ay, center.Z + d3),
                new Point3d(center.X + -d2, center.Y + Ay, center.Z + edge / 2),
                new Point3d(center.X + -d2, center.Y + Ay, center.Z + -edge / 2),
                new Point3d(center.X + d4, center.Y + Ay, center.Z + -d3),
                new Point3d(center.X + Fx, center.Y + Fy, center.Z),
                new Point3d(center.X + Fx * Math.Sin(t2), center.Y + Fy, center.Z + Fx * Math.Cos(t2)),
                new Point3d(center.X + -Fx * Math.Sin(t3), center.Y + Fy, center.Z + Fx * Math.Cos(t3)),
                new Point3d(center.X + -Fx * Math.Sin(t3), center.Y + Fy, center.Z + -Fx * Math.Cos(t3)),
                new Point3d(center.X + Fx * Math.Sin(t2), center.Y + Fy, center.Z + -Fx * Math.Cos(t2)),
                new Point3d(center.X + Fx * Math.Sin(t3), center.Y + -Fy, center.Z + Fx * Math.Cos(t3)),
                new Point3d(center.X + -Fx * Math.Sin(t2), center.Y + -Fy, center.Z + Fx * Math.Cos(t2)),
                new Point3d(center.X + -Fx, center.Y + -Fy, center.Z),
                new Point3d(center.X + -Fx * Math.Sin(t2), center.Y + -Fy, center.Z + -Fx * Math.Cos(t2)),
                new Point3d(center.X + Fx * Math.Sin(t3), center.Y + -Fy, center.Z + -Fx * Math.Cos(t3)),
                new Point3d(center.X + d2, center.Y + -Ay, center.Z + edge / 2),
                new Point3d(center.X + -d4, center.Y + -Ay, center.Z + d3),
                new Point3d(center.X + -d1, center.Y + -Ay, center.Z),
                new Point3d(center.X + -d4, center.Y + -Ay, center.Z + -d3),
                new Point3d(center.X + d2, center.Y + -Ay, center.Z + -edge / 2)
            };

            const short A = 1;
            const short B = 2;
            const short C = 3;
            const short D = 4;
            const short E = 5;
            const short F = 6;
            const short G = 7;
            const short H = 8;
            const short I = 9;
            const short J = 10;
            const short K = 11;
            const short L = 12;
            const short M = 13;
            const short N = 14;
            const short O = 15;
            const short P = 16;
            const short Q = 17;
            const short R = 18;
            const short S = 19;
            const short T = 20;

            Faces = new List<short[]>
            {
                new short[]{D, E, A, 0},
                new short[]{A, B, C, D},

                new short[]{B, C, H, G},
                new short[]{H, L, G, 0},

                new short[]{H, C, D, I},
                new short[]{I, M, H, 0},

                new short[]{I, D, E, J},
                new short[]{J, N, I, 0},

                new short[]{J, E, A, F},
                new short[]{F, O, J, 0},

                new short[]{F, A, B, G},
                new short[]{G, K, F, 0},

                new short[]{K, G, L, 0},
                new short[]{L, Q, P, K},

                new short[]{L, H, M, 0},
                new short[]{M, R, Q, L},

                new short[]{M, I, N, 0},
                new short[]{N, S, R, M},

                new short[]{N, J, O, 0},
                new short[]{O, T, S, N},

                new short[]{O, F, K, 0},
                new short[]{K, P, T, O},

                new short[]{P, Q, R, 0},
                new short[]{R, S, T, P}
            };
        }

        public Dodecahedron(Point3dCollection vertices)
        { 
            Vertices = vertices;

            Faces = new List<short[]>
            {
                /*new short[]{D, E, A, 0},
                new short[]{A, B, C, D},

                new short[]{B, C, H, G},
                new short[]{H, L, G, 0},

                new short[]{H, C, D, I},
                new short[]{I, M, H, 0},

                new short[]{I, D, E, J},
                new short[]{J, N, I, 0},

                new short[]{J, E, A, F},
                new short[]{F, O, J, 0},

                new short[]{F, A, B, G},
                new short[]{G, K, F, 0},

                new short[]{K, G, L, 0},
                new short[]{L, Q, P, K},

                new short[]{L, H, M, 0},
                new short[]{M, R, Q, L},

                new short[]{M, I, N, 0},
                new short[]{N, S, R, M},

                new short[]{N, J, O, 0},
                new short[]{O, T, S, N},

                new short[]{O, F, K, 0},
                new short[]{K, P, T, O},

                new short[]{P, Q, R, 0},
                new short[]{R, S, T, P}*/
            };
        }
    }
}
