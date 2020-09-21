using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Autodesk.AutoCAD.ApplicationServices;
using Autodesk.AutoCAD.DatabaseServices;
using Autodesk.AutoCAD.EditorInput;
using Autodesk.AutoCAD.Geometry;

namespace RGR4.Draw.Polyhedrons
{
    /// <summary>
    /// Базовый класс для построения многогранников.
    /// </summary>
    public abstract class Polyhedron
    {
        /// <summary>
        /// Вершины многогранника.
        /// </summary>
        public Point3dCollection Vertices { get; protected set; }

        /// <summary>
        /// Грани многогранника.
        /// </summary>
        public List<short[]> Faces { get; protected set; }

        /// <summary>
        /// Черчение многогранника в AutoCAD.
        /// </summary>
        public void Draw()
        {
            if (Vertices == null || Faces == null || Vertices.Count < 1 || Faces.Count < 1) return;

            using (Transaction acTrans = App.Database.TransactionManager.StartTransaction())
            {
                BlockTable acBlkTbl;
                acBlkTbl = acTrans.GetObject(App.Database.BlockTableId,
                                                OpenMode.ForRead) as BlockTable;
                BlockTableRecord acBlkTblRec;
                acBlkTblRec = acTrans.GetObject(acBlkTbl[BlockTableRecord.ModelSpace],
                                                OpenMode.ForWrite) as BlockTableRecord;

                // Create a polyface mesh
                using (PolyFaceMesh acPFaceMesh = new PolyFaceMesh())
                {
                    // Add the new object to the block table record and the transaction
                    acBlkTblRec.AppendEntity(acPFaceMesh);
                    acTrans.AddNewlyCreatedDBObject(acPFaceMesh, true);

                    foreach (Point3d acPt3d in Vertices)
                    {
                        PolyFaceMeshVertex acPMeshVer = new PolyFaceMeshVertex(acPt3d);
                        acPFaceMesh.AppendVertex(acPMeshVer);
                        acTrans.AddNewlyCreatedDBObject(acPMeshVer, true);
                    }

                    foreach (var face in Faces)
                    {
                        using (FaceRecord acFaceRec = new FaceRecord(face[0], face[1], face[2], face[3]))
                        {
                            acPFaceMesh.AppendFaceRecord(acFaceRec);
                            acTrans.AddNewlyCreatedDBObject(acFaceRec, true);
                        }
                    }
                }

                // Save the new objects to the database
                acTrans.Commit();
            }
        }
    }
}
