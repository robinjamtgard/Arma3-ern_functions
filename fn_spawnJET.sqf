// Kallas med startposition och 6 st waypoints.
//Kan strula vid nära vatten.
params [
				"_start",
				"_wp1",
				"_wp2",
				"_wp3",
				"_wp4",
				"_wp5",
				"_wp6"
				];
private _type = "I_Plane_Fighter_04_F";
private _start = getMarkerPos "indair";
private _veh = [_start, 0, _type, INDEPENDENT] call BIS_fnc_spawnVehicle;
private _group = _veh select 2;
_group setCombatMode "RED";
_group setBehaviour "AWARE";
_group setSpeedMode "NORMAL";
_group deleteGroupWhenEmpty true;
_group setVariable ["VCM_RAGDOLL",false];
_wp1 = getMarkerPos "wp1";
_wp2 = getMarkerPos "wp2";
_wp3 = getMarkerPos "wp3";
_wp4 = getMarkerPos "wp4";
_wp5 = getMarkerPos "wp5";
_wp6 = getMarkerPos "wp6";
_wp1 = _group addWaypoint [_wp1, 0];
_wp1 setWaypointType "MOVE";
_wp2 = _group addWaypoint [_wp2, 1];
_wp2 setWaypointType "MOVE";
_wp3 = _group addWaypoint [_wp3, 2];
_wp3 setWaypointType "SAD";
_wp4 = _group addWaypoint [_wp4, 3];
_wp4 setWaypointType "SAD";
_wp5 = _group addWaypoint [_wp5, 4];
_wp5 setWaypointType "SAD";
_wp6 = _group addWaypoint [_wp6, 5];
_wp6 setWaypointType "CYCLE";
_group;
