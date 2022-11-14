class cfgPatches
{
	class Silence_VR_East_Wind_Template_RHS
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
		requiredAddons[] = {"A3_Characters_F"};
	};
};
class CfgLoadoutReplacers
{
	#include "configs\CORE\cfgUnits.hpp"
	#include "configs\REPLACE\cfgLoadouts.hpp"
}