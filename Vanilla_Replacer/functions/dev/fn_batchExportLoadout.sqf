params ["_modset"];

_loadoutArray = [];
_unitsArray = [];

{
    if (_x getVariable ["Silence_VR_canExport", false]) then {
        private _syncedUnit = synchronizedObjects _x select 0;
        private _loadout = [_x, _modset] call Silence_VR_fnc_exportLoadout;
        private _unit = [_x, _syncedUnit, _loadout, _modset] call Silence_VR_fnc_exportUnit;
        _loadoutArray append [_loadout];
        _unitsArray append [_unit];
    };
} forEach allUnits;

_loadoutFinal = formatText 
[
    "
    '%1'
    // Put everything after this line in cfgUnits.hpp
    '%2'
    ",
    _loadoutArray,
    _unitsArray
];

hint str _loadoutFinal;
copyToClipboard str _loadoutFinal;

