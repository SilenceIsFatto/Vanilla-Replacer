class cfgPatches
{
	class Silence_VR_Core
	{
		units[] = 
		{
			"Silence_VR_Soldier_Base"
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