params ["_unit", "_syncedUnit", "_loadout", "_modset", "_faction"];

private _unitType = typeOf _unit;

_unitFinal = formatText 
[
    "
    class %1
    {

        factionType = 'Silence_VR_%3_%2';
        loadout = 'Silence_VR_%3_%4';

    }",
    typeOf _syncedUnit,
    _faction,
    _modset,
    _unitType
];

hint str _unitFinal;
copyToClipboard str _unitFinal;

_unitFinal