//Kallas med start och slut. ["markerx", "markerx"] call ern_fnc_xxx;
//Kan strula vid nära vatten.
params [
				"_start",
				"_end"
			 ];
private _pos = getMarkerPos _start;
private _squad = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_soldier_F", "I_Soldier_M_F", "I_Soldier_TL_F", "I_Soldier_AR_F", "I_Soldier_A_F", "I_medic_F"];
private _group = [_pos, INDEPENDENT, _squad] call BIS_fnc_spawnGroup;
_group setFormation "LINE";
_group setCombatMode "RED";
_group setBehaviour "AWARE";
_group setSpeedMode "NORMAL";
_group deleteGroupWhenEmpty true;
_group setVariable ["VCM_RAGDOLL",false];
_group setVariable ["VCM_NORESCUE",true];
private _wp = _group addWaypoint [getMarkerPos _end, 0];
_wp setWaypointType "SAD";
_group;
