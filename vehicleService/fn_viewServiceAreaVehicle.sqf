/**
 * WIDOK
 * Widok pojazdu w obszarze serwisowym
 */
 params ["_vehicleIndex"];

_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehicle"];
_vehicle = (_display getVariable ["HVR_VS_vehiclesInArea", 0]) select _vehicleIndex;
_display setVariable ["HVR_VS_currentVehicle", _vehicle];

[
	(localize "HVR_VEHICLE_SERVICE") + ": " + (getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "DisplayName")),
	""
] call HVR_VS_fnc_guiSetPanelContent;


_btnFillData = [];
/** Paliwo */
if((fuel _vehicle) < 1) then {
	_btnFillData pushBack [
		localize "HVR_REFUEL_VEHICLE",
		"[] call HVR_VS_fnc_refuelVehicle"
	];
};

/** Obrażenia */
if((damage _vehicle) > 0) then {
	_btnFillData pushBack [
		localize "HVR_REPAIR_VEHICLE",
		"[] call HVR_VS_fnc_repairVehicle"
	];
};

/** Podwieszenia */
if(count (getPylonMagazines _vehicle) > 0) then {	
	_btnFillData pushBack [
		localize "HVR_PYLON_LOADOUTS",
		"[] call HVR_VS_fnc_viewServiceAreaVehiclePylonSelect"			
	];
	
	
	_btnFillData pushBack [
		localize "HVR_PYLON_LOADOUTS_AMMO",
		"[] call HVR_VS_fnc_rearmPylons"
	];
};


_btnFillData pushBack [
	localize "HVR_BACK",	
	"[] call HVR_VS_fnc_viewServiceAreaVehicleSelect"
];

_btnFillData pushBack [
	localize "HVR_CLOSE",
	"([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) closeDisplay 2"
];

[] call HVR_VS_fnc_guiResetButtons;
[_btnFillData] call HVR_VS_fnc_guiFillButtons;