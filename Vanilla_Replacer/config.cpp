class cfgPatches
{
	class Silence_VR_Core
	{
		units[] = 
		{
			"Silence_VR_O_Soldier_F",
			"O_Soldier_F"
		};
		weapons[] = 
		{
			""
		};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F"};
	};
};

#define AUTHOR "Silence"
#define true 1
#define false 0

class CfgLoadoutReplacers
{
    #include "configs\OPFOR\CfgLoadouts.hpp"
};

class CfgUnitReplacers
{
	#include "configs\cfgUnits.hpp"
};

class CfgFunctions
{
	class Silence_VR
	{
		class functions
		{

			// functions
			class setLoadout 
			{
				file="\Vanilla_Replacer\functions\fn_setLoadout.sqf";
				postInit=0;
			};
			// functions/dev
			class exportLoadout
			{
				file="\Vanilla_Replacer\functions\dev\fn_exportLoadout.sqf";
				postInit=0;
			};
			// functions/dev
			class batchExportLoadout
			{
				file="\Vanilla_Replacer\functions\dev\fn_batchExportLoadout.sqf";
				postInit=0;
			};
			// functions/dev
			class exportUnit
			{
				file="\Vanilla_Replacer\functions\dev\fn_exportUnit.sqf";
				postInit=0;
			};
			
		};
	};
};

class Extended_Init_EventHandlers {
    class CAManBase 
	{
        class Silence_VR_ReplaceLoadout
		{
            init = "[(_this select 0)] spawn Silence_VR_fnc_setLoadout";
        };
    };
};

class cfgVehicles 
{
	class CAManBase;

	class Silence_VR_Soldier_Base : CAManBase {};

};