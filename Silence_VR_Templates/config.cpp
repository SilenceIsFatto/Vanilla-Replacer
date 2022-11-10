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

//

#define AUTHOR "Silence"
#define true 1
#define false 0

class CfgLoadoutReplacers
{
    #include "configs\OPF_F\CfgLoadouts.hpp"
};

class CfgUnitReplacers
{
	#include "configs\CORE\cfgUnits.hpp"
};