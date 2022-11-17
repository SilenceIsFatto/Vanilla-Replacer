class cfgPatches
{
	class Silence_VR_Functions
	{
		units[] = 
		{
			""
		};
		weapons[] = 
		{
			""
		};
		requiredVersion = 0.1;
		requiredAddons[] = {"Silence_VR_Core"};
	};
};

#define AUTHOR "Silence"
#define true 1
#define false 0

class CfgFunctions
{
	class Silence_VR
	{
		class functions
		{
			// functions/dev
			class exportLoadout
			{
				file="\Silence_VR_Functions\functions\dev\fn_exportLoadout.sqf";
				postInit=0;
			};
			// functions/dev
			class batchExportLoadout
			{
				file="\Silence_VR_Functions\functions\dev\fn_batchExportLoadout.sqf";
				postInit=0;
			};
			// functions/dev
			class exportUnit
			{
				file="\Silence_VR_Functions\functions\dev\fn_exportUnit.sqf";
				postInit=0;
			};
			
		};
	};
};

class Extended_PreInit_EventHandlers {
    class Silence_VR_GetPath {
        init = "call compile preprocessFileLineNumbers 'Silence_VR_Functions\XEH_preInit.sqf'";
    };
};