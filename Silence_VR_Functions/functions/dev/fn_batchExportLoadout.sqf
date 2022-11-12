params ["_modset", ["_faction", ""]];
if !(player getVariable ["Silence_VR_AllowPython",false]) exitWith {hint "Allow python isn't enabled in CBA settings. Aborting!"}; // might aswell make a toggle off

private _path = player getVariable ["Silence_VR_Path","C:\Documents\Vanilla_Replacer_Mod"];
private _tag = player getVariable ["Silence_VR_Tag","My_Mod"];

// make path a CBA option

_loadoutArray = [];
_unitsArray = [];

{
	if (_x getVariable ["Silence_VR_canExport", false]) then {
		private _syncedUnit = synchronizedObjects _x select 0;
		private _loadout = [_x, _modset] call Silence_VR_fnc_exportLoadout;
		if (_faction isEqualTo "") then {
			{ // grab a faction incase one wasn't provided, isn't foolproof.
				private _groupLeader = leader _x;
				if (_groupLeader getVariable ["Silence_VR_canExport", false]) exitWith {
					private _syncedUnit = synchronizedObjects _groupLeader select 0;
					_faction = [(configFile >> "cfgVehicles" >> typeOf _syncedUnit), "faction", ""] call BIS_fnc_returnConfigEntry;
					if (_faction isEqualTo "") exitWith {_faction = "DEFAULT"} // If the faction somehow STILL isn't provided, use a default
				};
			} forEach allGroups;
		}; // probably ramps up the execution time, but is quite important if you want to export X groups
		private _unit = [_x, _syncedUnit, _loadout, _modset, _faction] call Silence_VR_fnc_exportUnit;
		_loadoutArray append [_loadout];
		_unitsArray append [_unit];
	};
} forEach allUnits;

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
_pathFinal = formatText["%1\configs\%2", _path, _faction];

// write data to files
["vr_python.writeLoadout", [(str _pathFinal), "cfgLoadouts.hpp", str _loadoutArrayFinal]] call py3_fnc_callExtension;

['vr_python.writeLoadout', [(str _path + "\configs\CORE"), "cfgUnits.hpp", str _unitsArrayFinal]] call py3_fnc_callExtension;

["vr_python.writeConfig", [(str _path), "config.cpp", str _cfgPatches]] call py3_fnc_callExtension;