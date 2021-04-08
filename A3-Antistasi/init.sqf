#include "Includes\LogMacros.Inc"
Info("Init Started");
//Arma 3 - Antistasi - Warlords of the Pacific by Barbolani & The Official AntiStasi Community
//Do whatever you want with this code, but credit me for the thousand hours spent making this.
private _fileName = "init.sqf";
scriptName "init.sqf";

if (isNil "logLevel") then {logLevel = 2};
Info("Init SQF started");

//If it's singleplayer, delete every playable unit that isn't the player.
//Addresses the issue of a bunch of randoms running around at the start.
if (!isMultiplayer) then {
	Debug("Singleplayer detected: Deleting units for other players.");
	{ deleteVehicle _x; } forEach (switchableUnits select {_x != player});
};

enableSaving [false,false];
if !(A3A_hasVN) then {mapX setObjectTexture [0,"Pictures\Mission\whiteboard.jpg"];}
	else {};


Info("Init Started");
