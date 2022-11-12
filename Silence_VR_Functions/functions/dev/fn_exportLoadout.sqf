/*
    Author: Silence


    Usage: [_unit, _modset] call Silence_VR_fnc_exportLoadout;


    Example: [player, "RHS"] call Silence_VR_fnc_exportLoadout;


    Return Value: None


    Notes:
    Due to how i've made this, you can't force a certain magazine to go straight into the gun. 
    Omit that from your loadout (instead place mag in inventory).

*/

params ["_unit", "_modset"];

private _loadout = [];

private _primary = primaryWeapon _unit;
private _primaryAcc = primaryWeaponItems _unit;

private _secondary = handgunWeapon _unit;
private _secondaryAcc = handgunItems _unit;

private _launcher = secondaryWeapon _unit;
private _launcherAcc = secondaryWeaponItems _unit;

private _headgear = headgear _unit;
private _uniform = uniform _unit;
private _vest = vest _unit;
private _backpack = backpack _unit;
private _facewear = goggles _unit;
private _nvg = hmd _unit;
private _binocular = binocular _unit;

private _linkedItems = assignedItems _unit;

private _items = items _unit;
private _mags = magazines _unit;

_loadout append [[_primary, _primaryAcc], [_secondary, _secondaryAcc], [_launcher, _launcherAcc], [_headgear, _uniform, _vest, _backpack, _facewear, _nvg], _items, _linkedItems];

_loadout = formatText 
[
        "
        class %19_%17_%18
        {

            primary[] = {%1};
            secondary[] = {%2};
            launcher[] = {%3};
            primaryAcc[] = {'%4'};
            secondaryAcc[] = {'%5'};
            launcherAcc[] = {'%6'};

            headgear[] = {%7};
            uniform[] = {%8};
            vest[] = {%9};
            backpack[] = {%10};
            facewear[] = {%11};
            nvg[] = {%12};
            binocular[] = {%13};

            items[] = {'%14'};
            mags[] = {'%15'};
            linkedItems[] = {'%16'};

        }",
		str _primary, 
		str _secondary,
		str _launcher,
		str _primaryAcc,
		str _secondaryAcc,
		str _launcherAcc,

		str _headgear,
		str _uniform,
		str _vest,
		str _backpack,
		str _facewear,
		str _nvg,
		str _binocular,

		str _items,
		str _mags,
		str _linkedItems,
        _modset,
        typeOf _unit,
        _tag
];

copyToClipboard str _loadout;

_loadout