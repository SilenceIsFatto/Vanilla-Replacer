/*
    Author: Silence


    Usage: [_unit] call Silence_VR_fnc_getLoadout;


    Return Value: _result


    Notes:
    Currently deprecated

*/

params ["_faction", "_loadout"];

/*

private _result =           [];

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

_result append [_primary, _secondary, _launcher, _primaryAcc, _secondaryAcc, _launcherAcc, _headgear, _uniform, _vest, _backpack, _facewear, _nvg, _binocular, _items, _nvg, _linkedItems];

_result

*/