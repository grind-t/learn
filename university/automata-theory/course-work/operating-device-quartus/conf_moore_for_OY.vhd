-- В этом файле содержится декларация конфигурации ОУ
-- В качестве архитектурного тела УА используется
-- поведенческое описание автомата МУРА

configuration moore_for_OY of OY is --	имя конфигурации moore_for_OY 
for struct -- для архитектурного тела struct
	for unit_YA: ControlUnit -- для экземпляра компонента ControlUnit с именем unit_YA  
		use entity work.ControlUnit(arch_moore); -- использовать архитектурное тело arch_moore из библиотеки проекта
		
	end for;
end for;
end moore_for_OY; -- завершение конфигурации

