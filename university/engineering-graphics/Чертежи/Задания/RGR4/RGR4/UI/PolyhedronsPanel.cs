using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Interop;
using System.Windows.Media.Imaging;

using Autodesk.Windows;

using RGR4.Commands;
using RGR4.Properties;

namespace RGR4.UI
{
    public class PolyhedronsPanel : RibbonPanel
    {
        public PolyhedronsPanel() : base()
        {
            RibbonButton tetrahedronBtn = new RibbonButton
            {
                Id = "TetrahedronBtn",
                Size = RibbonItemSize.Large,
                Orientation = Orientation.Vertical,
                LargeImage = Imaging.CreateBitmapSourceFromHBitmap(Resources.Tetrahedron.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromWidthAndHeight(32, 32)),
                ShowImage = true,
                Text = "Тетраэдр",
                ShowText = true,
                CommandHandler = new RelayCommand((_) => App.Document.SendStringToExecute("Тетраэдр ", true, false, true), (_) => true)
            };

            RibbonButton octahedronBtn = new RibbonButton
            {
                Id = "OctahedronBtn",
                Size = RibbonItemSize.Large,
                Orientation = Orientation.Vertical,
                LargeImage = Imaging.CreateBitmapSourceFromHBitmap(Resources.Octahedron.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromWidthAndHeight(32, 32)),
                ShowImage = true,
                Text = "Октаэдр",
                ShowText = true,
                CommandHandler = new RelayCommand((_) => App.Document.SendStringToExecute("Октаэдр ", true, false, true), (_) => true)
            };

            RibbonButton dodecahedronBtn = new RibbonButton
            {
                Id = "DodecahedronBtn",
                Size = RibbonItemSize.Large,
                Orientation = Orientation.Vertical,
                LargeImage = Imaging.CreateBitmapSourceFromHBitmap(Resources.Dodecahedron.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromWidthAndHeight(32, 32)),
                ShowImage = true,
                Text = "Додекаэдр",
                ShowText = true,
                CommandHandler = new RelayCommand((_) => App.Document.SendStringToExecute("Додекаэдр ", true, false, true), (_) => true)
            };

            RibbonButton icosahedronBtn = new RibbonButton
            {
                Id = "IcosahedronBtn",
                Size = RibbonItemSize.Large,
                Orientation = Orientation.Vertical,
                LargeImage = Imaging.CreateBitmapSourceFromHBitmap(Resources.Icosahedron.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromWidthAndHeight(32, 32)),
                ShowImage = true,
                Text = "Икосаэдр",
                ShowText = true,
                CommandHandler = new RelayCommand((_) => App.Document.SendStringToExecute("Икосаэдр ", true, false, true), (_) => true)
            };

            RibbonPanelSource panelSource = new RibbonPanelSource();
            panelSource.Title = "Многогранники";
            panelSource.Items.Add(tetrahedronBtn);
            panelSource.Items.Add(octahedronBtn);
            panelSource.Items.Add(dodecahedronBtn);
            panelSource.Items.Add(icosahedronBtn);

            Source = panelSource;
        }
    }
}
