class rsc_dev_hud
{
	idd = 100;
	onLoad = "uiNamespace setVariable ['RscMyHUD', _this select 0];";
	class Controls
	{
        class RscPicture_1200: RscPicture
        {
            idc = 1200;
            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 0.298651 * safezoneW + safezoneX;
            y = 0.137 * safezoneH + safezoneY;
            w = 0.402698 * safezoneW;
            h = 0.616 * safezoneH;
            colorText[] = {-1,-1,-1,0.7};
        };
        class BTN_BATCH_EXPORT: RscButton
        {
            idc = 1600;
            text = "Loadout Batch Export"; //--- ToDo: Localize;
            x = 0.0405116 * safezoneW + safezoneX;
            y = 0.148 * safezoneH + safezoneY;
            w = 0.139395 * safezoneW;
            h = 0.055 * safezoneH;
            colorBackground[] = {-1,-1,-1,1};
        };
        class BTN_PACK_PBO: RscButton
        {
            idc = 1602;
            text = "Pack PBOs"; //--- ToDo: Localize;
            x = 0.0405116 * safezoneW + safezoneX;
            y = 0.225 * safezoneH + safezoneY;
            w = 0.139395 * safezoneW;
            h = 0.055 * safezoneH;
            colorBackground[] = {-1,-1,-1,1};
        };
        class EDT_BATCH: RscEdit
        {
            idc = 1400;
            x = 0.190233 * safezoneW + safezoneX;
            y = 0.148 * safezoneH + safezoneY;
            w = 0.444 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class LST_FILES: RscListbox
        {
            idc = 1500;
            x = 0.422558 * safezoneW + safezoneX;
            y = 0.236 * safezoneH + safezoneY;
            w = 0.382047 * safezoneW;
            h = 0.385 * safezoneH;
        };
        class RscEdit_1401: RscEdit
        {
            idc = 1401;
            x = 0.0405116 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.371721 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class RscPicture_1201: RscPicture
        {
            idc = 1201;
            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 0.701349 * safezoneW + safezoneX;
            y = 0.137 * safezoneH + safezoneY;
            w = 0.268465 * safezoneW;
            h = 0.616 * safezoneH;
            colorText[] = {-1,-1,-1,0.7};
        };
        class EDT_OUT: RscEdit
        {
            idc = 1402;
            x = 0.0405116 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.371721 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class EDT_IN: RscText
        {
            idc = 1000;
            text = "In FIle"; //--- ToDo: Localize;
            x = 0.0456743 * safezoneW + safezoneX;
            y = 0.302 * safezoneH + safezoneY;
            w = 0.242651 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class RscText_1001: RscText
        {
            idc = 1001;
            text = "Out File"; //--- ToDo: Localize;
            x = 0.0456743 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.242651 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class RscPicture_1202: RscPicture
        {
            idc = 1202;
            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 0.030186 * safezoneW + safezoneX;
            y = 0.137 * safezoneH + safezoneY;
            w = 0.268465 * safezoneW;
            h = 0.616 * safezoneH;
            colorText[] = {-1,-1,-1,0.4};
        };
        class BTN_BROWSE: RscButton
        {
            idc = 5000;
            text = "Browse"; //--- ToDo: Localize;
            x = 0.427721 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.139395 * safezoneW;
            h = 0.055 * safezoneH;
            colorBackground[] = {-1,-1,-1,1};
            onButtonClick = "[] call Silence_VR_fnc_openFolderBrowser";
        };

	};
};

// ["vr_python.writeLoadout", [(str _pathFinal), "cfgLoadouts.hpp", str _loadoutArrayFinal]] call py3_fnc_callExtension;
/* #Hekulo
$[
	1.063,
	["GUI_MAIN",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.298651 * safezoneW + safezoneX","0.137 * safezoneH + safezoneY","0.402698 * safezoneW","0.616 * safezoneH"],[-1,-1,-1,0.7],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"BTN_BATCH_EXPORT",[1,"Loadout Batch Export",["0.0405116 * safezoneW + safezoneX","0.148 * safezoneH + safezoneY","0.139395 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"BTN_PACK_PBO",[1,"Pack PBOs",["0.0405116 * safezoneW + safezoneX","0.225 * safezoneH + safezoneY","0.139395 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,1],[-1,-1,-1,-1],"","-1"],[]],
	[1400,"EDT_BATCH",[1,"",["0.190233 * safezoneW + safezoneX","0.148 * safezoneH + safezoneY","0.444 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"LST_FILES",[1,"",["0.422558 * safezoneW + safezoneX","0.236 * safezoneH + safezoneY","0.382047 * safezoneW","0.385 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1401,"",[1,"",["0.0405116 * safezoneW + safezoneX","0.357 * safezoneH + safezoneY","0.371721 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1201,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.701349 * safezoneW + safezoneX","0.137 * safezoneH + safezoneY","0.268465 * safezoneW","0.616 * safezoneH"],[-1,-1,-1,0.7],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1402,"EDT_OUT",[1,"",["0.0405116 * safezoneW + safezoneX","0.478 * safezoneH + safezoneY","0.371721 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"EDT_IN",[1,"In FIle",["0.0456743 * safezoneW + safezoneX","0.302 * safezoneH + safezoneY","0.242651 * safezoneW","0.044 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"",[1,"Out File",["0.0456743 * safezoneW + safezoneX","0.423 * safezoneH + safezoneY","0.242651 * safezoneW","0.044 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1202,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.030186 * safezoneW + safezoneX","0.137 * safezoneH + safezoneY","0.268465 * safezoneW","0.616 * safezoneH"],[-1,-1,-1,0.4],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"BTN_BROWSE",[1,"Browse",["0.427721 * safezoneW + safezoneX","0.643 * safezoneH + safezoneY","0.139395 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,1],[-1,-1,-1,-1],"","-1"],[]]
]
*/
