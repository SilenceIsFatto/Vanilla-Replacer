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
		requiredAddons[] = {"Silence_VR_Core"};
	};
};
class CfgLoadoutReplacers
{
	#include "configs\CORE\cfgUnits.hpp"
	#include "configs\REPLACE\cfgLoadouts.hpp"
}