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
	#include "configs\BLU_CTRG_F\cfgLoadouts.hpp"
	#include "configs\CORE\cfgUnits.hpp"
	#include "configs\IND_C_F\cfgLoadouts.hpp"
	#include "configs\OPF_F\cfgLoadouts.hpp"
	#include "configs\OPF_GEN_F\cfgLoadouts.hpp"
	#include "configs\OPF_T_F\cfgLoadouts.hpp"
	#include "configs\REPLACE\cfgLoadouts.hpp"
}