class cfgPatches
{
	class Silence_VR_Template_RHS
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
	#include "configs\OPF_F\cfgLoadouts.hpp"
	#include "configs\OPF_T_F\cfgLoadouts.hpp"
}