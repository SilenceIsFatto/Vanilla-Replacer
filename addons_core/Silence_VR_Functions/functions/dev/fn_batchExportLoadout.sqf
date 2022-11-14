params ["_modset", ["_faction", ""], ["_useSync", false]];
if !(profileNamespace getVariable ["Silence_VR_AllowPython",false]) exitWith {hint "Allow python isn't enabled in CBA settings. Aborting!"}; // might aswell make a toggle off

private _path = profileNamespace getVariable ["Silence_VR_Path","C:\Documents\Vanilla_Replacer_Mod"];
private _tag = profileNamespace getVariable ["Silence_VR_Tag","My_Mod"];

// make path a CBA option

_loadoutArray = [];
_unitsArray = [];
_factionArray = [];
_filter = [];

{
	if (_x getVariable ["Silence_VR_canExport", false]) then {
		_filter append [_x];
	};
} forEach allUnits;

{
	
	if (_useSync) then {
		_syncedUnit = synchronizedObjects _x select 0;
	} else {
		_syncedUnit = _x;
	};
	
	_faction = [(configFile >> "cfgVehicles" >> typeOf _syncedUnit), "faction", ""] call BIS_fnc_returnConfigEntry;

	if (_faction isEqualTo "") then {_faction = "DEFAULT"}; // If the faction somehow STILL isn't provided, use a default

	private _temp = [_x, _modset, _forEachIndex] call Silence_VR_fnc_exportLoadout;
	private _loadout = _temp select 0;
	private _loadoutClassname = _temp select 1;

	private _unit = [_x, _syncedUnit, _loadoutClassname, _modset, _faction, _forEachIndex, _factionArray] call Silence_VR_fnc_exportUnit;

	_loadoutArray append [_loadout];

	_unitsArray append [_unit];

	if (_faction in _factionArray) exitWith {}; // make sure that it doesn't add the same faction name per unit
	_factionArray append [_faction];

} forEach _filter;

_loadoutArrayFinal = formatText 
[
	"
	class %4_%2_%3
	{
		'%1'
	}",
	_loadoutArray,
	_modset,
	_faction,
	_tag
];

_unitsArrayFinal = formatText 
[
	"
		'%1'
	",
	_unitsArray
];

_cfgPatches = formatText 
[
	"
class cfgPatches
{
	class %2_Template_%1
	{
		units[] = 
		{
			""""
		};
		weapons[] = 
		{
			""""
		};
		requiredVersion = 0.1;
		requiredAddons[] = {""A3_Characters_F""};
	};
};

	",
	_modset,
	_tag
];

//private _path = "G:\Github Repos\Vanilla-Replacer";
_path = formatText["%1\%3_Template_%2", _path, _modset, _tag];
//_pathFinal = formatText["%1\configs\%2", _path, _faction];
if (count _factionArray != 1) then {
	pathFinal = formatText["%1\configs\REPLACE", _path];
	// _loadoutArrayFinal = formatText 
	// [
	// // has to be indented incorrectly for formatting reasons
	// "
	// class %4_%2_REPLACER
	// {
	// 	'%1'
	// }",
	// 	_loadoutArray,
	// 	_modset,
	// 	_faction,
	// 	_tag
	// ];
} else {
	pathFinal = formatText["%1\configs\%2", _path, _faction];
};

// write data to files
["vr_python.writeLoadout", [(str pathFinal), "cfgLoadouts.hpp", str _loadoutArrayFinal]] call py3_fnc_callExtension;

['vr_python.writeLoadout', [(str _path + "\configs\CORE"), "cfgUnits.hpp", str _unitsArrayFinal]] call py3_fnc_callExtension;

["vr_python.writeConfig", [(str _path), "config.cpp", str _cfgPatches]] call py3_fnc_callExtension;