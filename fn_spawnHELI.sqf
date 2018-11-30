//Kallas med positionen på trigger och den som aktiverat. [thisTrigger, thisList] execVM "xxxx.sqf";
params [
				"_trigger",
				"_activator"
				];
private _enemy = selectRandom _activator;
_enemy = leader (group _enemy);
private _dir = _enemy getDir _trigger;
private _pos = _enemy getPos [3000, _dir];
private _type = "I_Heli_light_03_dynamicLoadout_F";
private _crew = [_pos, 0, _type, INDEPENDENT] call BIS_fnc_spawnVehicle;
private _group = _crew select 2;
_group setCombatMode "RED";
_group setBehaviour "AWARE";
_group setSpeedMode "NORMAL";
_group deleteGroupWhenEmpty true;
_group setVariable ["VCM_RAGDOLL",false];
private _wp = _group addWaypoint [_enemy, 0];
_wp setWaypointType "SAD";
_group;
