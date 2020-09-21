using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Autodesk.AutoCAD.EditorInput;
using Autodesk.AutoCAD.Geometry;
using Autodesk.AutoCAD.Runtime;

using RGR4.Draw.Polyhedrons;

namespace RGR4.Commands
{
    public static class PolyhedronsCommands
    {
        [CommandMethod("Тетраэдр")]
        public static void CreateTetrahedron()
        {
            PromptPointResult ptResult;
            PromptPointOptions ptOptions;

            ptOptions = new PromptPointOptions("\nВведите 1 координату нижней грани тетраэдра или ");
            ptOptions.Keywords.Add("ПТетраэдр", "Правильный тетраэдр");
            ptResult = App.Document.Editor.GetPoint(ptOptions);

            if (ptResult.Status == PromptStatus.Cancel) return;
            else if (ptResult.StringResult == "ПТетраэдр")
            {
                Point3d center;
                double edge;

                ptOptions = new PromptPointOptions("\nВведите центр тетраэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                center = ptResult.Value;

                PromptDoubleResult doubleResult;
                PromptDoubleOptions doubleOptions;
                doubleOptions = new PromptDoubleOptions("\nВведите размер грани тетраэдра: ");
                doubleOptions.AllowZero = false;
                doubleOptions.AllowNegative = false;
                doubleOptions.AllowNone = false;
                doubleResult = App.Document.Editor.GetDouble(doubleOptions);
                if (doubleResult.Status == PromptStatus.Cancel) return;
                edge = doubleResult.Value;

                new Tetrahedron(center, edge).Draw();
            }
            else
            {
                Point3dCollection vertices = new Point3dCollection { ptResult.Value };
                for (int i = 2; i < 4; i++)
                {
                    ptOptions = new PromptPointOptions("\nВведите " + i + " координату нижней грани тетраэдра: ");
                    ptResult = App.Document.Editor.GetPoint(ptOptions);
                    if (ptResult.Status == PromptStatus.Cancel) return;
                    vertices.Add(ptResult.Value);
                }
                ptOptions = new PromptPointOptions("\nВведите верхнюю координату тетраэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                vertices.Add(ptResult.Value);

                new Tetrahedron(vertices).Draw();
            }
        }

        [CommandMethod("Октаэдр")]
        public static void CreateOctahedron()
        {
            PromptPointResult ptResult;
            PromptPointOptions ptOptions;

            ptOptions = new PromptPointOptions("\nВведите нижнюю координату октаэдра или ");
            ptOptions.Keywords.Add("ПОктаэдр", "Правильный октаэдр");
            ptResult = App.Document.Editor.GetPoint(ptOptions);

            if (ptResult.Status == PromptStatus.Cancel) return;
            else if (ptResult.StringResult == "ПОктаэдр")
            {
                Point3d center;
                double edge;

                ptOptions = new PromptPointOptions("\nВведите центр октаэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                center = ptResult.Value;

                PromptDoubleResult doubleResult;
                PromptDoubleOptions doubleOptions;
                doubleOptions = new PromptDoubleOptions("\nВведите размер грани октаэдра: ");
                doubleOptions.AllowZero = false;
                doubleOptions.AllowNegative = false;
                doubleOptions.AllowNone = false;
                doubleResult = App.Document.Editor.GetDouble(doubleOptions);
                if (doubleResult.Status == PromptStatus.Cancel) return;
                edge = doubleResult.Value;

                new Octahedron(center, edge).Draw();
            }
            else
            {
                Point3dCollection vertices = new Point3dCollection { ptResult.Value };
                for (int i = 1; i <= 4; i++)
                {
                    ptOptions = new PromptPointOptions("\nВведите " + i + " координату секущего октаэдр четырехугольника: ");
                    ptResult = App.Document.Editor.GetPoint(ptOptions);
                    if (ptResult.Status == PromptStatus.Cancel) return;
                    vertices.Add(ptResult.Value);
                }
                ptOptions = new PromptPointOptions("\nВведите верхнюю координату октаэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                vertices.Add(ptResult.Value);

                new Octahedron(vertices).Draw();
            }
        }

        [CommandMethod("Додекаэдр")]
        public static void CreateDodecahedron()
        {
            PromptPointResult ptResult;
            PromptPointOptions ptOptions;

            ptOptions = new PromptPointOptions(/*"\nВведите 1 координату додекаэдра или "*/"");
            ptOptions.Keywords.Add("ПДодекаэдр", "Правильный додекаэдр");
            ptResult = App.Document.Editor.GetPoint(ptOptions);

            if (ptResult.Status == PromptStatus.Cancel) return;
            else if (ptResult.StringResult == "ПДодекаэдр")
            {
                Point3d center;
                double edge;

                ptOptions = new PromptPointOptions("\nВведите центр додекаэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                center = ptResult.Value;

                PromptDoubleResult doubleResult;
                PromptDoubleOptions doubleOptions;
                doubleOptions = new PromptDoubleOptions("\nВведите размер грани додекаэдра: ");
                doubleOptions.AllowZero = false;
                doubleOptions.AllowNegative = false;
                doubleOptions.AllowNone = false;
                doubleResult = App.Document.Editor.GetDouble(doubleOptions);
                if (doubleResult.Status == PromptStatus.Cancel) return;
                edge = doubleResult.Value;

                new Dodecahedron(center, edge).Draw();
            }
            /*else
            {
                Point3dCollection vertices = new Point3dCollection { ptResult.Value };
                for (int i = 2; i <= 20; i++)
                {
                    ptOptions = new PromptPointOptions("\nВведите " + i + " координату додекаэдра: ");
                    ptResult = App.Document.Editor.GetPoint(ptOptions);
                    if (ptResult.Status == PromptStatus.Cancel) return;
                    vertices.Add(ptResult.Value);
                }

                new Dodecahedron(vertices).Draw();
            }*/
        }

        [CommandMethod("Икосаэдр")]
        public static void CreateConvexPolyhedron()
        {
            PromptPointResult ptResult;
            PromptPointOptions ptOptions;

            ptOptions = new PromptPointOptions(/*"\nВведите нижнюю координату икосаэдра или "*/"");
            ptOptions.Keywords.Add("ПИкосаэдр", "Правильный икосаэдр");
            ptResult = App.Document.Editor.GetPoint(ptOptions);

            if (ptResult.Status == PromptStatus.Cancel) return;
            else if (ptResult.StringResult == "ПИкосаэдр")
            {
                Point3d center;
                double edge;

                ptOptions = new PromptPointOptions("\nВведите центр икосаэдр: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                center = ptResult.Value;

                PromptDoubleResult doubleResult;
                PromptDoubleOptions doubleOptions;
                doubleOptions = new PromptDoubleOptions("\nВведите размер грани икосаэдра: ");
                doubleOptions.AllowZero = false;
                doubleOptions.AllowNegative = false;
                doubleOptions.AllowNone = false;
                doubleResult = App.Document.Editor.GetDouble(doubleOptions);
                if (doubleResult.Status == PromptStatus.Cancel) return;
                edge = doubleResult.Value;

                new Icosahedron(center, edge).Draw();
            }
            /*else
            {
                Point3dCollection vertices = new Point3dCollection { ptResult.Value };
                for (int i = 1; i <= 5; i++)
                {
                    ptOptions = new PromptPointOptions("\nВведите " + i + " координату нижнего пятиугольника, секущего икосаэдр: ");
                    ptResult = App.Document.Editor.GetPoint(ptOptions);
                    if (ptResult.Status == PromptStatus.Cancel) return;
                    vertices.Add(ptResult.Value);
                }
                for (int i = 1; i <= 5; i++)
                {
                    ptOptions = new PromptPointOptions("\nВведите " + i + " координату верхнего пятиугольника, секущего икосаэдр: ");
                    ptResult = App.Document.Editor.GetPoint(ptOptions);
                    if (ptResult.Status == PromptStatus.Cancel) return;
                    vertices.Add(ptResult.Value);
                }
                ptOptions = new PromptPointOptions("\nВведите верхнюю координату икосаэдра: ");
                ptResult = App.Document.Editor.GetPoint(ptOptions);
                if (ptResult.Status == PromptStatus.Cancel) return;
                vertices.Add(ptResult.Value);

                new Icosahedron(vertices).Draw();
            }*/
        }
    }
}
