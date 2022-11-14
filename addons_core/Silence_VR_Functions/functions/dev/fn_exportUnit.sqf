params ["_unit", "_syncedUnit", "_loadout", "_modset", "_faction", "_index", "_factionArray"];

private _unitType = typeOf _unit;

if (count _factionArray != 1) then {
    unitFinal = formatText
    [
    // indented badly for formatting reasons
    "
    class %1
    {

        factionType = '%5_%3_REPLACER';
        loadout = '%7';

    }",
        typeOf _syncedUnit,
        _faction,
        _modset,
        _unitType,
        _tag,
        _index,
        _loadoutClassname
    ];
} else {

    unitFinal = formatText 
    [
    // indented badly for formatting reasons
    "
    class %1
    {

        factionType = '%5_%3_%2';
        loadout = '%7';

    }",
        typeOf _syncedUnit,
        _faction,
        _modset,
        _unitType,
        _tag,
        _index,
        _loadoutClassname
    ];

};

unitFinal