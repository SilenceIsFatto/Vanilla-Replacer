_folders = ["vr_python_ui.load", []] call py3_fnc_callExtension;

// hint str _folders;
[_folders] call Silence_VR_fnc_listFiles;

diag_log format["%1 was returned by vr_python_ui.load", _folders];