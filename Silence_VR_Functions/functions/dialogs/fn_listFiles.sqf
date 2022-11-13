// ["vr_python.writeLoadout", [(str _pathFinal), "cfgLoadouts.hpp", str _loadoutArrayFinal]] call py3_fnc_callExtension;

params ["_path"];


// _display 		 = uiNamespace getVariable "RscMyHUD";
// _fileList 		 = _display displayCtrl 1500;
// _fileOut   		 = _display displayCtrl 1402;
// _fileIn   		 = _display displayCtrl 1000;

{
	// hint str _x;
	_index = lbAdd [1500, _x];
	lbSetData [1500, _forEachIndex, str _x];

} forEach _path;