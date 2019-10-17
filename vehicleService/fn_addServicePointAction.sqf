/**
 * Dodanie akcji "serwis pojazdów" do obiektu
 */
params ["_object"];

_hasVehicleServiceAction = _object getVariable ["HVR_VS_hasVehicleServiceAction", false];

if(!_hasVehicleServiceAction) then {
	_actionIndex = _object addAction [
		localize "HVR_VEHICLES_SERVICE",
		{
			[_this select 0] call HVR_VS_fnc_createServiceAreaDisplay;
		},
		[],
		1.5,
		false,
		false,
		"",
		"true",
		getNumber (missionconfigfile >> "HVR_VS_cfg" >> "serviceAreaActionRadius")
	];
	_object setVariable ["HVR_VS_hasVehicleServiceAction", true, true];
	_object setVariable ["HVR_VS_vehicleServiceActionIndex", _actionIndex, true];
};