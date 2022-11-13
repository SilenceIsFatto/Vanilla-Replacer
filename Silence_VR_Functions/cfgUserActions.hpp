class CfgUserActions
{
	class Silence_VR_Menu // This class name is used for internal representation and also for the inputAction command.
	{
		displayName = "Menu Keybinding";
		tooltip = "";
		onActivate = "[""rsc_dev_hud""] call Silence_VR_fnc_openDialog";		// _this is always true.
		onDeactivate = "";		// _this is always false.
		onAnalog = "";	// _this is the scalar analog value.
		analogChangeThreshold = 0.1; // Minimum change required to trigger the onAnalog EH (default: 0.01).
	};

};

class UserActionGroups
{
	class Silence_VR_Keybinds // Unique classname of your category.
	{
		name = "Vanilla Replacer Keybindings"; // Display name of your category.
		isAddon = 1;
		group[] =
		{
			"Silence_VR_Menu"
		};
	};
};