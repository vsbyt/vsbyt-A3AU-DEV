if (!isServer) exitWith {};
private ["_subCosa","_ammunition","_origen","_destino"];
_origen = _this select 0;
if (isNull _origen) exitWith {};
_destino = _this select 1;

_ammunition= [];
_items = [];
_ammunition = magazineCargo _origen;
_items = itemCargo _origen;
_armas = [];
_weaponsItemsCargo = weaponsItemsCargo _origen;
_mochis = [];

if (count backpackCargo _origen > 0) then
	{
	{
	_mochis pushBack (_x call BIS_fnc_basicBackpack);
	} forEach backpackCargo _origen;
	};
_containers = everyContainer _origen;
if (count _containers > 0) then
	{
	for "_i" from 0 to (count _containers) - 1 do
		{
		_subCosa = magazineCargo ((_containers select _i) select 1);
		if (!isNil "_subCosa") then {_ammunition = _ammunition + _subCosa} else {diag_log format ["Error from %1",magazineCargo (_containers select _i)]};
		//_ammunition = _ammunition + (magazineCargo ((_containers select _i) select 1));
		_items = _items + (itemCargo ((_containers select _i) select 1));
		_weaponsItemsCargo = _weaponsItemsCargo + weaponsItemsCargo ((_containers select _i) select 1);
		};
	};
if (!isNil "_weaponsItemsCargo") then
	{
	if (count _weaponsItemsCargo > 0) then
		{
		{
		_armas pushBack ([(_x select 0)] call BIS_fnc_baseWeapon);
		for "_i" from 1 to (count _x) - 1 do
			{
			_cosa = _x select _i;
			if (typeName _cosa == typeName "") then
				{
				if (_cosa != "") then {_items pushBack _cosa};
				};
			};
		} forEach _weaponsItemsCargo;
		};
	};

_weaponsFinal = [];
_weaponsFinalCount = [];
{
_arma = _x;
if ((not(_arma in _weaponsFinal)) and (not(_arma in unlockedWeapons))) then
	{
	_weaponsFinal pushBack _arma;
	_weaponsFinalCount pushBack ({_x == _arma} count _armas);
	};
} forEach _armas;

if (count _weaponsFinal > 0) then
	{
	for "_i" from 0 to (count _weaponsFinal) - 1 do
		{
		_destino addWeaponCargoGlobal [_weaponsFinal select _i,_weaponsFinalCount select _i];
		};
	};

_ammunitionFinal = [];
_ammunitionFinalCount = [];
if (isNil "_ammunition") then
	{
	diag_log format ["Error en transmisión de munición. Tenía esto: %1 y estos containers: %2, el origen era un %3 y el objeto está definido como: %4", magazineCargo _origen, everyContainer _origen,typeOf _origen,_origen];
	}
else
	{
	{
	_arma = _x;
	if ((not(_arma in _ammunitionFinal)) and (not(_arma in unlockedMagazines))) then
		{
		_ammunitionFinal pushBack _arma;
		_ammunitionFinalCount pushBack ({_x == _arma} count _ammunition);
		};
	} forEach  _ammunition;
	};


if (count _ammunitionFinal > 0) then
	{
	for "_i" from 0 to (count _ammunitionFinal) - 1 do
		{
		_destino addMagazineCargoGlobal [_ammunitionFinal select _i,_ammunitionFinalCount select _i];
		};
	};

_itemsFinal = [];
_itemsFinalCount = [];
{
_arma = _x;
if ((not(_arma in _itemsFinal)) and (not(_arma in unlockedItems))) then
	{
	_itemsFinal pushBack _arma;
	_itemsFinalCount pushBack ({_x == _arma} count _items);
	};
} forEach _items;

if (count _itemsFinal > 0) then
	{
	for "_i" from 0 to (count _itemsFinal) - 1 do
		{
		_destino addItemCargoGlobal [_itemsFinal select _i,_itemsFinalCount select _i];
		};
	};

_backpcksFinal = [];
_backpcksFinalCount = [];
{
_arma = _x;
if ((not(_arma in _backpcksFinal)) and (not(_arma in unlockedBackpacks))) then
	{
	_backpcksFinal pushBack _arma;
	_backpcksFinalCount pushBack ({_x == _arma} count _mochis);
	};
} forEach _mochis;

if (count _backpcksFinal > 0) then
	{
	for "_i" from 0 to (count _backpcksFinal) - 1 do
		{
		_destino addBackpackCargoGlobal [_backpcksFinal select _i,_backpcksFinalCount select _i];
		};
	};

if (count _this == 3) then
	{
	deleteVehicle _origen;
	}
else
	{
	clearMagazineCargoGlobal _origen;
	clearWeaponCargoGlobal _origen;
	clearItemCargoGlobal _origen;
	clearBackpackCargoGlobal _origen;
	};

if (_destino == caja) then
	{
	if (isMultiplayer) then {{if (_x distance caja < 10) then {[petros,"hint","Ammobox Loaded"] remoteExec ["A3A_fnc_commsMP",_x]}} forEach playableUnits} else {hint "Ammobox Loaded"};
	if ((_origen isKindOf "ReammoBox_F") and (_origen != cajaVeh)) then {deleteVehicle _origen};
	_updated = [] call A3A_fnc_arsenalManage;
	if (_updated != "") then
		{
		_updated = format ["Arsenal Updated<br/><br/>%1",_updated];
		[petros,"income",_updated] remoteExec ["A3A_fnc_commsMP",[buenos,civilian]];
		};
	}
else
	{
	[petros,"hint","Truck Loaded"] remoteExec ["A3A_fnc_commsMP",driver _destino];
	};