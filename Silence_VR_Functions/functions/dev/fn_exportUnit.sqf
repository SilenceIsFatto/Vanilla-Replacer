params ["_unit", "_syncedUnit", "_loadout", "_modset", "_faction"];

private _unitType = typeOf _unit;

_unitFinal = formatText 
[
    "
    class %1
    {

        factionType = '%5_%3_%2';
        loadout = '%5_%3_%4';

    }",
    typeOf _syncedUnit,
    _faction,
    _modset,
    _unitType,
    _tag
];

hint str _unitFinal;
copyToClipboard str _unitFinal;

_unitFinal