/**
 * WIDOK
 * Widok wyboru pojazdu w obszarze serwisowym
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehicleSelect"];

[
	localize "HVR_VEHICLES_SERVICE",
	localize "HVR_CHOOSE_VEHICLE"
] call HVR_VS_fnc_guiSetPanelContent;

[] call HVR_VS_fnc_viewUpdateVehicleList;