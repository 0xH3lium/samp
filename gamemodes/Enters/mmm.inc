#include <YSI_Coding\y_hooks>

#define MAX_MARKERS 20



enum MarkerData{
	Float:X1,
	Float:Y1,
	Float:Z1,
	Float:A1,
	Float:X2,
	Float:Y2,
	Float:Z2,
	Float:A2,
	VWorld,
	Int,
	_P1,
	_P2,
	bool:Controled
}
new Markers[MAX_MARKERS][MarkerData];
hook OnGameModeInit()
{
	CreateMarker(false,2523.6232, -1679.3393, 15.5151, 20.0,2468.4074, -1698.3243, 1013.5078, 20.0, 0, 2); // inside
	return 1;
}

stock GetMarker()
{
	for(new i=0;i<MAX_MARKERS;i++)
	{
		if(Markers[i][X1] == 0)
			return i;
	}
	return -1;
}
CreateMarker(bool:contor,Float:x1, Float:y1, Float:z1, Float:a1, Float:x2, Float:y2, Float:z2, Float:a2, v, i)
{
	new MID = GetMarker();
	Markers[MID][Controled] = contor;
	Markers[MID][X1] = x1;
	Markers[MID][Y1] = y1;
	Markers[MID][Z1] = z1;
	Markers[MID][A1] = a1;
	Markers[MID][_P1] = CreateDynamicPickup(19130,23,x1,y1,z1,0,0,-1,80);
	Markers[MID][VWorld] = v;
	Markers[MID][Int] = i;
	Markers[MID][X2] = x2;
	Markers[MID][Y2] = y2;
	Markers[MID][Z2] = z2;
	Markers[MID][A2] = a2;
	Markers[MID][_P2] = CreateDynamicPickup(19130,23,x2,y2,z2,v,i,-1,80);

	return MID;
}
TpMarker(playerid,MarkerID,bool:inside)
{
	if(inside == false)
	{
		new Float:Tempx = Markers[MarkerID][X1],Float:Tempy = Markers[MarkerID][Y1];
	    Tempx += (4 * floatsin(-Markers[MarkerID][A1], degrees));
	    Tempy += (4 * floatcos(-Markers[MarkerID][A1], degrees));
		SetPlayerPos(playerid,Tempx,Tempy,Markers[MarkerID][Z1]);
		SetPlayerInterior(playerid,0);
		SetPlayerFacingAngle(playerid,Markers[MarkerID][A1]);
		SetPlayerVirtualWorld(playerid,0);
		SetCameraBehindPlayer(playerid);
	}else
	{
		new Float:Tempx = Markers[MarkerID][X2],Float:Tempy = Markers[MarkerID][Y2];
	    Tempx += (4 * floatsin(-Markers[MarkerID][A2], degrees));
	    Tempy += (4 * floatcos(-Markers[MarkerID][A2], degrees));
		SetPlayerPos(playerid,Tempx,Tempy,Markers[MarkerID][Z2]);
		SetPlayerInterior(playerid,Markers[MarkerID][Int]);
		SetPlayerFacingAngle(playerid,Markers[MarkerID][A2]);
		SetPlayerVirtualWorld(playerid,Markers[MarkerID][VWorld]);
		SetCameraBehindPlayer(playerid);
	}
	return 1;
}


hook OnPlayerPickUpDynPickup(playerid,pickupid)
{
	/*for(new i = 0; i < MAX_MARKERS; i++)
	{
		if(pickupid != Markers[i][_P1]) continue;
		TpMarker(playerid,i,true);
	}
	for(new i = 0; i < MAX_MARKERS; i++)
	{
		if(pickupid != Markers[i][_P2]) continue;
		TpMarker(playerid,i,false);
	}*/
	for(new i = 0; i < MAX_MARKERS; i++)
	{
		if(Markers[i][Controled]) continue;
		if(pickupid == Markers[i][_P1])
		{
			TpMarker(playerid,i,true);
		}
		else if(pickupid == Markers[i][_P2])
		{
			TpMarker(playerid,i,false);
		}
		
	}
	return 1;
}