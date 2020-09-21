using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Autodesk.AutoCAD.Runtime;
using Autodesk.Windows;
using Autodesk.AutoCAD.Geometry;
using Autodesk.AutoCAD.EditorInput;
using Autodesk.AutoCAD.ApplicationServices;
using Autodesk.AutoCAD.DatabaseServices;

using RGR4.UI;
using System.Speech.Recognition;

[assembly: CommandClass(typeof(RGR4.Commands.PolyhedronsCommands))]

namespace RGR4
{
    /// <summary>
    /// Главный класс плагина.
    /// </summary>
    public class App : IExtensionApplication
    {
        /// <summary>
        /// Возвращает активный документ.
        /// </summary>
        public static Document Document => Application.DocumentManager.MdiActiveDocument;

        /// <summary>
        /// Вовзращает ДБ активного документа.
        /// </summary>
        public static Database Database => Document.Database;

        public void Initialize()
        {
            // TODO: Обработка начала работы плагина.
            CreateUI();
        }

        public void Terminate()
        {
            // TODO: Обработка завершения работы плагина (выход из AutoCAD).
        }

        // Создание пользовательского интерфейса плагина.
        public void CreateUI()
        {
            RibbonTab tab = new RibbonTab();
            tab.Title = "РГР4";
            tab.Id = "RGR4Tab";
            tab.Panels.Add(new PolyhedronsPanel());

            RibbonControl control = ComponentManager.Ribbon;
            control.Tabs.Add(tab);
        }
    }
}
