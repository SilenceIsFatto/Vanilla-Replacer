/*
    Author: Silence


    Usage: [_unit] call Silence_VR_fnc_setLoadout;


    Example: [player] call Silence_VR_fnc_setLoadout;


    Return Value: None


    Notes:
    Read fn_exportLoadout for more info on limitations

*/

params ["_unit"];

private _unitType =         typeOf _unit;

private _faction =          [(configFile >> "CfgLoadoutReplacers" >> _unitType), "factionType", ""] call BIS_fnc_returnConfigEntry;
private _loadout =          [(configFile >> "CfgLoadoutReplacers" >> _unitType), "loadout", ""] call BIS_fnc_returnConfigEntry;

if                          (_faction isEqualTo "") exitWith {diag_log "VANILLA REPLACER: Unit faction wasn't set, possibly not intended to be replaced"};
if                          (_loadout isEqualTo "") exitWith {diag_log "VANILLA REPLACER: Unit loadout wasn't set, possibly not intended to be replaced"};
if                          (is3DEN) exitWith {};

// Get loadout
private _primary =          getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "primary");
private _secondary =        getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "secondary");
private _launcher =         getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "launcher");

private _primaryAcc =       getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "primaryAcc");
private _secondaryAcc =     getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "secondaryAcc");
private _launcherAcc =      getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "launcherAcc");

private _headgear =         getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "headgear");
private _uniform =          getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "uniform");
private _vest =             getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "vest");
private _backpack =         getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "backpack");
private _facewear =         getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "facewear");
private _nvg =              getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "nvg");
private _binocular =        getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "binocular");

private _items =            getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "items");
private _mags =             getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "mags");
private _linkedItems =      getArray (configFile >> "CfgLoadoutReplacers" >> _faction >> _loadout >> "linkedItems");

// Clear loadout
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Start loadout script
_unit forceAddUniform selectRandom _uniform;
_unit addVest selectRandom _vest;
_unit addBackpack selectRandom _backpack;

_unit addHeadgear selectRandom _headgear;
_unit addGoggles selectRandom _facewear;

// Inventory mags
{
    _unit addMagazine _x;
} forEach _mags;

// Weapons
_unit addWeapon selectRandom _primary;
_unit addWeapon selectRandom _secondary;
_unit addWeapon selectRandom _launcher;

//_unit reload [];

// Primary attachments
{
    _unit addPrimaryWeaponItem _x;
    diag_log format ["Added %1 to unit %2", _x, _unit];
} forEach _primaryAcc;

// Secondary attachments
{
    _unit addHandgunItem _x;
    diag_log format ["Added %1 to unit %2", _x, _unit];
} forEach _secondaryAcc;

// Launcher attachments
{
    _unit addSecondaryWeaponItem _x;
    diag_log format ["Added %1 to unit %2", _x, _unit];
} forEach _launcherAcc;

// Linked items
{
    _unit linkItem _x;
    diag_log format ["Added %1 to unit %2", _x, _unit];
} forEach _linkedItems;

// Normal inventory items
{
    _unit addItem _x;
    diag_log format ["Added %1 to unit %2", _x, _unit];
} forEach _items;