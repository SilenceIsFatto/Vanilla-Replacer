class cfgPatches
{
	class Silence_VR_Templates
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
	#include "configs\BLUFOR\cfgLoadouts.hpp"
	#include "configs\CIV\cfgLoadouts.hpp"
	#include "configs\CORE\cfgUnits.hpp"
	#include "configs\IND\cfgLoadouts.hpp"
	#include "configs\OPF_F\cfgLoadouts.hpp"
}