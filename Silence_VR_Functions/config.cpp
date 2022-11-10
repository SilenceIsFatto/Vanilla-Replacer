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
		requiredAddons[] = {"A3_Data_F"};
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

			// functions
			class setLoadout 
			{
				file="\Silence_VR_Functions\functions\fn_setLoadout.sqf";
				postInit=0;
			};
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