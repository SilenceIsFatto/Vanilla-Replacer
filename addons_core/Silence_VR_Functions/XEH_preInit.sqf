#include "script_component.hpp"

ADDON = true;

[
    "Silence_VR_Info", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "[DEV] Allow file changes must be enabled to use dev functions", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Vanilla Replacer", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
    }
] call CBA_fnc_addSetting;

[
    "Silence_VR_AllowPython", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "[DEV] Vanilla Replacer - Allow File Changes", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Vanilla Replacer", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
		profileNamespace setVariable ["Silence_VR_AllowPython",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "Silence_VR_Path", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "[DEV] Vanilla Replacer - Mod Files Path", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Vanilla Replacer", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "C:\Documents\Vanilla_Replacer_Mod",
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
		profileNamespace setVariable ["Silence_VR_Path",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "Silence_VR_Tag", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "[DEV] Vanilla Replacer - Mod Files Tag", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Vanilla Replacer", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "My_Mod",
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
		profileNamespace setVariable ["Silence_VR_Tag",_value,true];
    }
] call CBA_fnc_addSetting;