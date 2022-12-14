#define SSCANF_NO_NICE_FEATURES
// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>
#include <YSI\y_ini>
#include<zcmd>
//#include<mselection>
#include <sscanf2>
#include <streamer>
//#include "src/tx"



#define USER_FILE "Users/%s.ini"

#define ZONE_FILE "Zones/%d.ini"

#define HOUSE_FILE "Houses/%d.ini"


//menus

#define REGISTER_MENU 0
#define LOGIN_MENU 1
#define USERLIST_MENU 2
#define HOUSE_BUY_MENU 3


#define ZONE_COLOR 0xF3F0E596
#define WHITE 0xFFFFFFAA
#define RED 0xFF0000FF
#define BLUE 0x0000FFFF
#define GREEN 0x33AA33AA
#define LIGHTGREEN 0x24FF0AB9
#define YELLOW 0xFFFF00FF
#define PINK 0xFF80C0FF
#define PURPLE 0x800080AA
#define LIGHTBLUE 0x0080C0FF
#define GREY 0xAFAFAFAA
#define ORANGE 0xFF8000FF
#define BEGE 0xFFA97F99
#define LIGHTRED 0xFF8080FF
#define DER 0xAA3333AA

#define GROVE_PLAYER_COLOR 0x00FF6CFF
#define BALLAS_PLAYER_COLOR 0xFF0061FF
#define VAGOS_PLAYER_COLOR 0xF5EA00FF
#define POLICE_PLAYER_COLOR 0x00F5E2FF

#define MAX_ZONES 30
#define MAX_HOUSES 30
#define TEAM_GROVE_STREET 0x00FF6CBB
#define TEAM_BALLAS 0xFF0061BB
#define TEAM_VAGOS 0xF5EA00BB
#define TEAM_POLICE 0x00FFEBFF



#define NO_ZONE 200



/*    Server Vars     */
/* ------------------ */

new UserMenuArr[10];
new U_Attack_Zone;
new U_Attack_by;

new MoneyBagPickup;
new Grove_Pickup;
new Ballas_Pickup;
new Vagos_Pickup;
new GroveCount;
new BallasCount;
new VagosCount;
new Text3D:GroveFam;
new Text3D:BallasFam;
new Text3D:VagosFam;
new gsGrove;
new gsBallas;
new gsPolice;


new Float:Hospitals[1][4] =
{
{2025.08,-1423.42,16.99,135.68}
};


enum Zoner
{
	Float:MinX,
	Float:MinY,
	Float:MaxX,
	Float:MaxY,
	Owner,
	Color,
	_Zone,
	bool:locked,
	bool:U_Attack,
	timer_lock,
	timercap,
}
new ZoneInfo[MAX_ZONES][Zoner];

/*    Player 1D Vars     */
/* --------------------- */
new mohlatincpass[MAX_PLAYERS char];
new bool:firstspawn[MAX_PLAYERS];
new Team[MAX_PLAYERS];
new bool:Bustu[MAX_PLAYERS];








/*        Objects        */
/* --------------------- */


enum Data
{
	creatingzone,
	tempzone,
	Float:minX,
	Float:minY,
	Float:maxX,
	Float:maxY,
	InZone
}
new P_INFO[MAX_PLAYERS][Data];


enum User_Data
{
	pPass[128],
	Cash,
	Float:pPosX,
	Float:pPosY,
	Float:pPosZ,
	Float:Health,
	Float:Armour,
	House,
    gSlot0_gun,
    gSlot0_ammo,
    gSlot1_gun,
    gSlot1_ammo,
    gSlot2_gun,
    gSlot2_ammo,
    gSlot3_gun,
    gSlot3_ammo,
    gSlot4_gun,
    gSlot4_ammo,
    gSlot5_gun,
    gSlot5_ammo,
    gSlot6_gun,
    gSlot6_ammo,
    gSlot7_gun,
    gSlot7_ammo,
    gSlot8_gun,
    gSlot8_ammo,
    gSlot9_gun,
    gSlot9_ammo,
    gSlot10_gun,
    gSlot10_ammo,
    gSlot11_gun,
    gSlot11_ammo,
    gSlot12_gun,
    gSlot12_ammo
}
new PlayerInfo[MAX_PLAYERS][User_Data];

enum HData
{
	Owner[64],
	CP,
	Text3D:Text,
	Value,
	Float:HouseX,
	Float:HouseY,
	Float:HouseZ,
	VehModel,
	_Veh,
	Float:CarX,
	Float:CarY,
	Float:CarZ,
	Float:CarA,
	CarColor1,
	CarColor2,
	VehWheel,
	bool:VehNitro,
	bool:VehHydro
}
new H_INFO[MAX_HOUSES][HData];


////////////      TEXTDRAW      ///////////////
new PlayerText: Text_Player[MAX_PLAYERS][35];
new PlayerText:Pooltextdraw[MAX_PLAYERS];
new PlayerText:PlayerTD[MAX_PLAYERS][17];

new Text:ZoneTD;

///////////~~~  TEXT DRAW END ~~~////////////

main()
{
	print("\n----------------------------------");
	print(" 126");
	print("----------------------------------\n");
}


public OnGameModeInit()
{
    AddPlayerClassEx(TEAM_GROVE_STREET,271,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0); //ryder
    AddPlayerClassEx(TEAM_GROVE_STREET,270,270.1088,7.5106,1001.3356,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_GROVE_STREET,106,106.1088,7.5106,1001.3356,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_BALLAS,102,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_BALLAS,103,270.1088,7.5106,1001.3356,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_BALLAS,104,106.1088,7.5106,1001.3356,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_VAGOS,108,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_VAGOS,109,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_VAGOS,110,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_POLICE,280,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_POLICE,286,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
    AddPlayerClassEx(TEAM_POLICE,287,2492.17,-1662.35,13.33,0.0,0,0,0,0,0,0);
	SetGameModeText("Goh !");
	DisableInteriorEnterExits();
	SetTimer("ServerOneSecondVariables",1000,1);
	SetTimer("ServerTenSecondVariables",10000,1);

	Grove_Pickup = CreateDynamicPickup(1314,23,2511.17,-1681.89,13.50,0,0,-1,60);
	Ballas_Pickup = CreateDynamicPickup(1314,23,2169.882080,-1674.035644,15.085937,0,0,-1,60);
	Vagos_Pickup = CreateDynamicPickup(1314,23,2351.959716,-1168.035766,27.834585,0,0,-1,60);

	for(new h = 0; h < MAX_ZONES; h++)
	{
	    new file[40];
		format(file, sizeof(file), ZONE_FILE, h);
	    if(fexist(file))
		{
	    	INI_ParseFile(file, "LoadZone_%s", .bExtra = true, .extra = h);
	    	ZoneInfo[h][_Zone] = GangZoneCreate(ZoneInfo[h][MinX],ZoneInfo[h][MinY],ZoneInfo[h][MaxX],ZoneInfo[h][MaxY]);
	    	ZoneInfo[h][locked] = false;

		}
	}
	U_Attack_Zone = -1;

	new tempstr[128];
	format(tempstr,128,"{00FFC5} Gang {F5EA00} Vagos\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",VagosCount);
	VagosFam = Create3DTextLabel(tempstr,YELLOW,2351.959716,-1168.035766,27.834585,40,0,1);
	format(tempstr,128,"{00FFC5} Gang {FF0061} Ballas\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",BallasCount);
	BallasFam = Create3DTextLabel(tempstr,YELLOW,2169.882080,-1674.035644,15.085937,40,0,1);
	format(tempstr,128,"{00FFC5} Gang {00FF6C} Grove Street\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",GroveCount);
	GroveFam = Create3DTextLabel(tempstr,YELLOW,2511.17,-1681.89,13.50,40,0,1);

	CountZones();
	for(new j = 1; j < MAX_HOUSES; j++)
	{
	    new file[40];
		format(file, sizeof(file), HOUSE_FILE, j);
	    if(fexist(file))
		{
	    	INI_ParseFile(file, "LoadHouse_%s", .bExtra = true, .extra = j);
	    	CreateHouse(j);

		}
	}

	CreateObject(18885, 2178.4001, -1660.2717, 15.1358, -0.2999, 0.0999, 45.3000); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",YELLOW,2179.524902,-1661.555419,15.21488,50,0,1);
	CreateObject(18885, 2478.9499, -1687.5627, 13.5893, 0.0000, 0.0000, 174.3999); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",YELLOW,2479.119140,-1686.157592,13.907812,50,0,1);
	CreateObject(18885, 1508.6232, -1626.3209, 14.1153, 0.7999, -0.2999, 93.0000); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",YELLOW,1510.036132,-1626.318725,14.446875,50,0,1);

	gsGrove = CreateDynamicCP(2179.524902,-1661.555419, 14.9358,1.0,0,0,-1,40);
	gsBallas = CreateDynamicCP(2479.119140,-1686.157592, 13.2893,1.0,0,0,-1,40);
	gsPolice = CreateDynamicCP(1510.036132,-1626.318725, 14.0153,1.0,0,0,-1,40);
	return 1;
}

public OnGameModeExit()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(!IsPlayerConnected(i)) continue;
		SaveUserData(i);
	}
	for(new i = 0; i < MAX_ZONES; i++)
	{
		if(ZoneInfo[i][Color] == 0) continue;
		SaveZoneData(i);
	}
	for(new i = 1; i < MAX_HOUSES; i++)
	{
		SaveHouseData(i);
	}
	
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerTeamFromClass(playerid, classid);
    SetPlayerPos(playerid, 2116.0205, 2143.3225, 10.8203); 
    SetPlayerFacingAngle(playerid, 89.6528);
    SetPlayerCameraLookAt(playerid, 2116.0205, 2143.3225, 10.8203);
    SetPlayerCameraPos(playerid, 2116.0205 + (5 * floatsin(-89.6528, degrees)), 2143.3225 + (5 * floatcos(-89.6528, degrees)), 10.8203);
    switch (classid)
    {
        case 0,1,2:
        {
            GameTextForPlayer(playerid, "~g~GROVE STREET", 3000, 5);
        }
        case 3,4,5:
        {
            GameTextForPlayer(playerid, "~r~BALLAS", 3000, 5);
        }
        case 6,7,8:
        {
            GameTextForPlayer(playerid, "~y~VAGOS", 3000, 5);
        }
        case 9,10,11:
        {
            GameTextForPlayer(playerid, "~b~POLICE", 3000, 5);
        }

    }

	return 1;
}

public OnPlayerConnect(playerid)
{
	////// Login System
	//////////////////////////////////////////////////////////////
	new string[128];
    LoadPlayerTextdraws(playerid);
	new ipstring[128];
	GetPlayerIp(playerid,ipstring,sizeof(ipstring));
    if(fexist(UserFile(playerid)))
    {
        format(string, sizeof(string), "{40FFFF}[Username]: {FFFF00}%s\n{40FFFF}[IP]: {FFFF00}%s\n\n{FFFFFF}Be Server Khosh Amadid. Baraie Vorod Be Hesab Khod, Password Khod Ra Vared Konid.\nDar Gheire In Sorat, Gozine Khoruj Ra Entekhab Konid.",GetName(playerid),ipstring);
        ShowPlayerDialog(playerid,LOGIN_MENU,DIALOG_STYLE_INPUT,"{FF0000}Vorod Be Hesab",string,"{FFFFFF}Vorod","{FF0000}Khoruj");
    }
    else if(!fexist(UserFile(playerid)))
    {
        format(string, sizeof(string), "{40FFFF}[Username]: {FFFF00}%s\n{40FFFF}[IP]: {FFFF00}%s\n\n{FFFFFF}Be Server Khosh Amadid. Baraie Shoro, Ebteda Baiad Be Ozviat Server Dar Biaiad.\nLotfan Passwordi Baraie Hesab Khod Entekhab Konid.",GetName(playerid),ipstring);
        ShowPlayerDialog(playerid,REGISTER_MENU,DIALOG_STYLE_INPUT,"{FF0000}Ozviat Dar Server",string,"{FFFFFF}Ozviat","{FF0000}Khoruj");
    }
    /////////////////////////////////////////////////////////////
    
    P_INFO[playerid][InZone] = NO_ZONE;
    Bustu[playerid] = false;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(U_Attack_by == playerid)
	{
		FailCaptureZone(playerid);
	}
	SaveUserData(playerid);
	return 1;
}


public OnPlayerSpawn(playerid)
{
	if(firstspawn[playerid])
	{
		SetPlayerPos(playerid,PlayerInfo[playerid][pPosX],PlayerInfo[playerid][pPosY],PlayerInfo[playerid][pPosZ]);
		firstspawn[playerid] = false;
		SetPlayerHealth(playerid,PlayerInfo[playerid][Health]);
		SetPlayerArmour(playerid,PlayerInfo[playerid][Armour]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot0_gun], PlayerInfo[playerid][gSlot0_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot1_gun], PlayerInfo[playerid][gSlot1_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot2_gun], PlayerInfo[playerid][gSlot2_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot3_gun], PlayerInfo[playerid][gSlot3_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot4_gun], PlayerInfo[playerid][gSlot4_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot5_gun], PlayerInfo[playerid][gSlot5_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot6_gun], PlayerInfo[playerid][gSlot6_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot7_gun], PlayerInfo[playerid][gSlot7_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot8_gun], PlayerInfo[playerid][gSlot8_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot9_gun], PlayerInfo[playerid][gSlot9_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot10_gun], PlayerInfo[playerid][gSlot10_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot11_gun], PlayerInfo[playerid][gSlot11_ammo]);
		GivePlayerWeapon(playerid, PlayerInfo[playerid][gSlot12_gun], PlayerInfo[playerid][gSlot12_ammo]);
	}
	else if(PlayerInfo[playerid][House] != 0)
	{
		SetPlayerPos(playerid,H_INFO[PlayerInfo[playerid][House]][HouseX],H_INFO[PlayerInfo[playerid][House]][HouseY],H_INFO[PlayerInfo[playerid][House]][HouseZ]);
	}
	else {
		SetPlayerHealth(playerid,100.0);
	    SetPlayerPos(playerid,Hospitals[0][0],Hospitals[0][1],Hospitals[0][2]);
	    SetPlayerFacingAngle(playerid,Hospitals[0][3]);
	    SetCameraBehindPlayer(playerid);
	}
	for(new i =0; i < MAX_ZONES; i++)
    {
    	if(ZoneInfo[i][Color] == 0) continue;
    	GangZoneShowForPlayer(playerid, ZoneInfo[i][_Zone], ZoneInfo[i][Color]);
    }
    SetPlayerColor(playerid, Team[playerid]);


    SetPlayerMapIcon(playerid, 0, 2511.17,-1681.89,13.50, 62, 0, MAPICON_GLOBAL);
    SetPlayerMapIcon(playerid, 1 ,2169.882080,-1674.035644,15.085937, 59,0,MAPICON_GLOBAL);
    SetPlayerMapIcon(playerid,2,2351.959716,-1168.035766,27.834585,60, 0 ,MAPICON_GLOBAL); //vagos
	return 1;
}



public OnPlayerDeath(playerid, killerid, reason)
{
	SendDeathMessage(killerid,playerid,reason);
	if(U_Attack_by == playerid)
	{
		if(Team[killerid] != Team[playerid]) CaptureZone(killerid,U_Attack_Zone);
	}
	if(Team[killerid] != TEAM_POLICE)
	{
		SetPlayerWantedLevel(killerid , GetPlayerWantedLevel(killerid) + 1);
	}
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}
public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid,bodypart)
{
	if(Bustu[playerid] == true)
	{
		new Float:healt;
		GetPlayerHealth(playerid,healt);
		SetPlayerHealth(playerid,healt - 2 * amount);
	}
	return 1;
}
public OnPlayerText(playerid, text[])
{
	return 1;
}
	
public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		new Float:pos[3];
		GetPlayerPos(playerid,pos[0],pos[1],pos[2]);
		CreateVehicle(520, pos[0] + 2.5, pos[1], pos[2] + 2.5, 0.0, random(128), random(128), -1);
		return 1;
	}
	return 0;
}

stock rmgunshop(playerid)
{
	CancelSelectTextDraw(playerid);
	for(new x=0; x<35; x++)
	{
		PlayerTextDrawHide(playerid, Text_Player[playerid][x]);
	}
	return 1;
}
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{

    if(playertextid == Text_Player[playerid][0])
    {
        rmgunshop(playerid);
        return 1;
    }
    if(playertextid == Text_Player[playerid][3])
    {
		rmgunshop(playerid);
        return 1;
    }
    if(playertextid == Text_Player[playerid][6])
    {
		rmgunshop(playerid);
        return 1;
    }
    if(playertextid == Text_Player[playerid][9])
    {
		rmgunshop(playerid);
        return 1;
    }
    if(playertextid == Text_Player[playerid][12])
    {
		rmgunshop(playerid);
        return 1;
    }

/* --------  PlayerTextdraw exits ----------*/


    if(playertextid == Text_Player[playerid][33])
    {
	    CancelSelectTextDraw(playerid);
	    for(new x=0; x<35; x++)
		{
			PlayerTextDrawHide(playerid, Text_Player[playerid][x]);
		}
         
        return 1;
    }
    if(playertextid == PlayerTD[playerid][16])
    {
        CancelSelectTextDraw(playerid);
        for(new x=0; x<17; x++)
        {
            PlayerTextDrawHide(playerid, PlayerTD[playerid][x]);
        }
         
        return 1;
    }


    return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{

    SetPlayerPos(playerid,fX,fY,fZ);
    return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

/*public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}*/

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	SetPlayerWantedLevel(playerid,0);
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    /*if(newkeys & KEY_CTRL_BACK)
    {	

    	if(!point2){
    		GetPlayerPos(playerid,point[0],point[1],point[2]);
    		point2 = true;
    	}else {
    		new Float:point3[3],h;
    		h = GetFreeZoneID();
    		GetPlayerPos(playerid,point3[0],point3[1],point3[2]);
    		ZoneInfo[h][_Zone] = GangZoneCreate(point[0],point[1],point3[0],point3[1]);
    		GangZoneShowForPlayer(playerid,ZoneInfo[h][_Zone],0x00FF0099);
    	}
        
    }*/
    if(newkeys & KEY_NO)
    {

        PlayerTextDrawShow(playerid, PlayerTD[playerid][0]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][1]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][2]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][3]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][4]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][5]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][6]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][7]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][8]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][9]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][10]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][11]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][12]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][13]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][14]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][15]);
        PlayerTextDrawShow(playerid, PlayerTD[playerid][16]);
        SelectTextDraw(playerid, 0xFF0000FF);
    }
    if(newkeys & KEY_YES)
    {
        new vehicleID,Float: vehPos[3],Float: vehAngle;
        vehicleID = GetPlayerVehicleID(playerid);
        GetVehiclePos(vehicleID, vehPos[0], vehPos[1], vehPos[2]);
        GetVehicleZAngle(vehicleID, vehAngle);
        vehPos[0] += (floatcos(vehAngle + 90, degrees) * 30);
        vehPos[1] += (floatsin(vehAngle + 90, degrees) * 30);
        vehPos[2] += 2;
        CreateExplosion(vehPos[0], vehPos[1], vehPos[2], 0, 10);
    }
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	if(P_INFO[playerid][creatingzone])
	{
		new keys,ud,lr;
		GetPlayerKeys(playerid,keys,ud,lr);
	

		if(lr == KEY_LEFT)
		{

			P_INFO[playerid][minX] -= 6.0;
			GangZoneDestroy(P_INFO[playerid][tempzone]);
			P_INFO[playerid][tempzone] =  GangZoneCreate(P_INFO[playerid][minX],P_INFO[playerid][minY],P_INFO[playerid][maxX],P_INFO[playerid][maxY]);
			GangZoneShowForPlayer(playerid, P_INFO[playerid][tempzone], ZONE_COLOR);

		}
		else
		if(lr == KEY_RIGHT)
		{

			P_INFO[playerid][maxX] += 6.0;
			GangZoneDestroy(P_INFO[playerid][tempzone]);
			P_INFO[playerid][tempzone] =  GangZoneCreate(P_INFO[playerid][minX],P_INFO[playerid][minY],P_INFO[playerid][maxX],P_INFO[playerid][maxY]);
			GangZoneShowForPlayer(playerid, P_INFO[playerid][tempzone],ZONE_COLOR);

		}

		else
		if(ud == KEY_UP)
		{

			P_INFO[playerid][maxY] += 6.0;
			GangZoneDestroy(P_INFO[playerid][tempzone]);
			P_INFO[playerid][tempzone] =  GangZoneCreate(P_INFO[playerid][minX],P_INFO[playerid][minY],P_INFO[playerid][maxX],P_INFO[playerid][maxY]);
			GangZoneShowForPlayer(playerid, P_INFO[playerid][tempzone], ZONE_COLOR);

		}

		else
		if(ud == KEY_DOWN)
		{

			P_INFO[playerid][minY] -= 6.0;
			GangZoneDestroy(P_INFO[playerid][tempzone]);
			P_INFO[playerid][tempzone] =  GangZoneCreate(P_INFO[playerid][minX],P_INFO[playerid][minY],P_INFO[playerid][maxX],P_INFO[playerid][maxY]);
			GangZoneShowForPlayer(playerid, P_INFO[playerid][tempzone], ZONE_COLOR);

		}


		else if(keys & KEY_WALK)
		{

			P_INFO[playerid][creatingzone] = false;
			TogglePlayerControllable(playerid,true);
			CreateZone(P_INFO[playerid][minX],P_INFO[playerid][minY],P_INFO[playerid][maxX],P_INFO[playerid][maxY]);
			GangZoneDestroy(P_INFO[playerid][tempzone]);
		}
	}
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}


public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
	    case REGISTER_MENU:
    	{
		    new f[40], string[150];
	        format(f, sizeof(f), USER_FILE, GetName(playerid));
	        if(!strlen(inputtext)) return SendClientMessage(playerid, RED, "Shoma bayad yek ramz obor vared konid.") && format(string,sizeof(string),"Welcome to server Goh %s!\n\nIn esm sabtenam nashode.\n\nYek ramz obor vared konid va on ro faramosh nakonid:", GetName(playerid)) && ShowPlayerDialog(playerid, REGISTER_MENU, DIALOG_STYLE_INPUT, "{FFFFFF}Register", string, "Register", "Kick");
	        if(strlen(inputtext) < 3 || strlen(inputtext) > 24) return SendClientMessage(playerid, RED, "> Your password can only contain 3-24 characters.") && format(string,sizeof(string),"{FFFFFF}Welcome to ACNR %s!\n\nIn esm sabtenam nashode.\n\nYek ramz obor vared konid va on ro faramosh nakonid:", GetName(playerid)) && ShowPlayerDialog(playerid, REGISTER_MENU, DIALOG_STYLE_INPUT, "{FFFFFF}Register", string, "Register", "Kick");
			if(!response) return SendClientMessage(playerid, RED, "Ghabl az spawn bayad sabtenam konid.") && Kick(playerid);
			{
	        format(PlayerInfo[playerid][pPass],128,"%s",inputtext);
			GivePool(playerid, 10000);
			SaveUserData(playerid);

	        }
    	}
    	case LOGIN_MENU:
    	{
		    new f[40], string[150],fstr2[150];
	        format(f, sizeof(f), USER_FILE, GetName(playerid));
			INI_ParseFile(f, "LoadUser_%s", .bExtra = true, .extra = playerid);
	        if(!strlen(inputtext)) return SendClientMessage(playerid, RED, "Shoma bayad yek ramze obor vared konid.") && Kick(playerid);
	        else if(!response) return SendClientMessage(playerid, RED, "Ghabl az spawn bayad login shavid.") && Kick(playerid);
	    	if(strcmp(inputtext, PlayerInfo[playerid][pPass], false) != 0 && mohlatincpass{playerid} == 0)
	    	{
		    	mohlatincpass{playerid} ++;
		    	format(fstr2,sizeof(fstr2),"{FFFFFF}Khosh Amadi %s [%d].\n\nIn Esm ghablan sabtenam shode.\n\nBaraye vorod ramze obore khod ra vared konid:", GetName(playerid),playerid);
		        ShowPlayerDialog(playerid, LOGIN_MENU, DIALOG_STYLE_INPUT, "{FFFFFF}ACNR Account Login", fstr2, "Login", "Ban");
		        SendClientMessage(playerid,RED,"   RamzObor ra eshtebah vared kardid (1/3)  ");
		        //return 1;
	        }
	        else if(strcmp(inputtext, PlayerInfo[playerid][pPass], false) != 0 && mohlatincpass{playerid} == 1)
	    	{
		    	mohlatincpass{playerid} ++;
		    	format(fstr2,sizeof(fstr2),"{FFFFFF}Khosh Amadi %s [%d].\n\nIn Esm ghablan sabtenam shode.\n\nBaraye vorod ramze obore khod ra vared konid:", GetName(playerid),playerid);
		        ShowPlayerDialog(playerid, LOGIN_MENU, DIALOG_STYLE_INPUT, "{FFFFFF}ACNR Account Login", fstr2, "Login", "Ban");
		        SendClientMessage(playerid,RED,"   RamzObor ra eshtebah vared kardid (2/3)  ");
		        //return 1;
	        }
	        else if(strcmp(inputtext, PlayerInfo[playerid][pPass], false) != 0 && mohlatincpass{playerid} == 2)
			{
	            GameTextForPlayer(playerid,"~r~Kicked...~n~Kicked..~n~Kicked.~n~Kicked",9999,2);
	            SendClientMessage(playerid, RED, "Ramz Obor Eshtebah.");
	            format(string, sizeof(string), "%s [%d] az ACNR Kick shod - Dalil: Ramz obor eshtebah", GetName(playerid), playerid);
	            SendClientMessage(playerid,RED,"   RamzObor ra eshtebah vared kardid (3/3)  ");
	           	SendClientMessage(playerid, RED, string);
	            Kick(playerid);
	            mohlatincpass{playerid} = 0;
			    print(string);
	            return 1;
	        }
	        else
	        {
				SetPlayerScore(playerid, PlayerInfo[playerid][Cash]);
				GivePlayerMoney(playerid, PlayerInfo[playerid][Cash]);
				firstspawn[playerid] = true;

			}
    	}
    	case USERLIST_MENU:
    	{
    		SendClientMessage(playerid,0x909090FF,"adsadsdsadsdsadsadsad har har har");
    	}
    	case HOUSE_BUY_MENU:
    	{
    		if(!response) return 1;
			if(PlayerInfo[playerid][House] != 0) return SendClientMessage(playerid,0x909090FF,"To Khone Dari Dadash");
			new HIDX = GetPVarInt(playerid,"LastHouseCP");
			if(Buy(playerid,H_INFO[HIDX][Value])) return SendClientMessage(playerid,0x909090FF,"Pool Nadari Dadash");
			format(H_INFO[HIDX][Owner],64,"%s",GetName(playerid));
			new str[128];
			format(str,128,"{FFFFFF}Khane Shomare : %d\n{FFFF00}Geymat Khane :  $ %d\n{26ADFF}Saheb Khane : {%s} %s !",HIDX,H_INFO[HIDX][Value],SahebKhaneColor(HIDX),H_INFO[HIDX][Owner]);
			Update3DTextLabelText(H_INFO[HIDX][Text], YELLOW, str);
			SaveHouseData(HIDX);
			PlayerInfo[playerid][House] = HIDX;
    	}
	}
	


	return 1;
}


public OnPlayerPickUpDynamicPickup(playerid, pickupid)
{
	for(new h = 0; h < MAX_HOUSES; h++)
	{
		if(pickupid != H_INFO[h][CP]) continue;

		if(!strcmp(H_INFO[h][Owner], GetName(playerid)))
		{
			SendClientMessage(playerid,0x909090FF,"Khone Khodete Dadash !");
		}
		if(!strcmp(H_INFO[h][Owner],"Bedun Saheb"))
		{
			new strr[128];
			format(strr,128,"Aya Mikhahid In Khane Ra Be Gheymat %s Kharidari Konid ?",AddThousandsSeparators(H_INFO[h][Value]));
			ShowPlayerDialog(playerid,HOUSE_BUY_MENU,DIALOG_STYLE_MSGBOX,"{FFFF00}Kharid Khane",strr,"Entekhab","Cancel");
		}
		SetPVarInt(playerid,"LastHouseCP",pickupid);
	}
	if(pickupid == MoneyBagPickup)
	{
		GivePool(playerid,20000);
		DestroyDynamicPickup(MoneyBagPickup);
	}
	if(pickupid == Grove_Pickup && Team[playerid] == TEAM_GROVE_STREET)
	{
		GivePool(playerid,GetPVarInt(playerid,"zonemoney"));
		SetPVarInt(playerid,"zonemoney",0);
	}
	if(pickupid == Ballas_Pickup && Team[playerid] == TEAM_BALLAS)
	{
		GivePool(playerid,GetPVarInt(playerid,"zonemoney"));
		SetPVarInt(playerid,"zonemoney",0);
	}
	if(pickupid == Vagos_Pickup && Team[playerid] == TEAM_VAGOS)
	{
		GivePool(playerid,GetPVarInt(playerid,"zonemoney"));
		SetPVarInt(playerid,"zonemoney",0);
	}
	return 1;
}

public OnPlayerEnterDynamicCP(playerid, checkpointid)
{

	if(checkpointid == gsGrove || gsPolice || gsBallas){
		return cmd_gg(playerid);
	}
	return 1;
}



stock SaveUserData(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		new file[40],Float:X[3];
		GetPlayerPos(playerid,X[0],X[1],X[2]);
		GetPlayerHealth(playerid, PlayerInfo[playerid][Health]);
		GetPlayerArmour(playerid, PlayerInfo[playerid][Armour]);
		format(file, sizeof(file), USER_FILE, GetName(playerid));
    	new INI:ufile = INI_Open(file);
    	INI_WriteString(ufile, "pPass", PlayerInfo[playerid][pPass]);
    	INI_WriteInt(ufile, "Cash",PlayerInfo[playerid][Cash]);
    	INI_WriteInt(ufile, "House",PlayerInfo[playerid][House]);
    	INI_WriteFloat(ufile, "pPosX", X[0]);
    	INI_WriteFloat(ufile, "pPosY", X[1]);
    	INI_WriteFloat(ufile, "pPosZ", X[2]);
    	INI_WriteFloat(ufile, "Health", PlayerInfo[playerid][Health]);
    	INI_WriteFloat(ufile, "Armour", PlayerInfo[playerid][Armour]);

		GetPlayerWeaponData(playerid, 0, PlayerInfo[playerid][gSlot0_gun], PlayerInfo[playerid][gSlot0_ammo]);
		GetPlayerWeaponData(playerid, 1, PlayerInfo[playerid][gSlot1_gun], PlayerInfo[playerid][gSlot1_ammo]);
		GetPlayerWeaponData(playerid, 2, PlayerInfo[playerid][gSlot2_gun], PlayerInfo[playerid][gSlot2_ammo]);
		GetPlayerWeaponData(playerid, 3, PlayerInfo[playerid][gSlot3_gun], PlayerInfo[playerid][gSlot3_ammo]);
		GetPlayerWeaponData(playerid, 4, PlayerInfo[playerid][gSlot4_gun], PlayerInfo[playerid][gSlot4_ammo]);
		GetPlayerWeaponData(playerid, 5, PlayerInfo[playerid][gSlot5_gun], PlayerInfo[playerid][gSlot5_ammo]);
		GetPlayerWeaponData(playerid, 6, PlayerInfo[playerid][gSlot6_gun], PlayerInfo[playerid][gSlot6_ammo]);
		GetPlayerWeaponData(playerid, 7, PlayerInfo[playerid][gSlot7_gun], PlayerInfo[playerid][gSlot7_ammo]);
		GetPlayerWeaponData(playerid, 8, PlayerInfo[playerid][gSlot8_gun], PlayerInfo[playerid][gSlot8_ammo]);
		GetPlayerWeaponData(playerid, 9, PlayerInfo[playerid][gSlot9_gun], PlayerInfo[playerid][gSlot9_ammo]);
		GetPlayerWeaponData(playerid, 10, PlayerInfo[playerid][gSlot10_gun], PlayerInfo[playerid][gSlot10_ammo]);
		GetPlayerWeaponData(playerid, 11, PlayerInfo[playerid][gSlot11_gun], PlayerInfo[playerid][gSlot11_ammo]);
		GetPlayerWeaponData(playerid, 12, PlayerInfo[playerid][gSlot12_gun], PlayerInfo[playerid][gSlot12_ammo]);

	    INI_WriteInt(ufile, "gSlot0_gun", PlayerInfo[playerid][gSlot0_gun]);
	    INI_WriteInt(ufile, "gSlot0_ammo", PlayerInfo[playerid][gSlot0_ammo]);
	    INI_WriteInt(ufile, "gSlot1_gun", PlayerInfo[playerid][gSlot1_gun]);
	    INI_WriteInt(ufile, "gSlot1_ammo", PlayerInfo[playerid][gSlot1_ammo]);
	    INI_WriteInt(ufile, "gSlot2_gun", PlayerInfo[playerid][gSlot2_gun]);
	    INI_WriteInt(ufile, "gSlot2_ammo", PlayerInfo[playerid][gSlot2_ammo]);
	    INI_WriteInt(ufile, "gSlot3_gun", PlayerInfo[playerid][gSlot3_gun]);
	    INI_WriteInt(ufile, "gSlot3_ammo", PlayerInfo[playerid][gSlot3_ammo]);
	    INI_WriteInt(ufile, "gSlot4_gun", PlayerInfo[playerid][gSlot4_gun]);
	    INI_WriteInt(ufile, "gSlot4_ammo", PlayerInfo[playerid][gSlot4_ammo]);
	    INI_WriteInt(ufile, "gSlot5_gun", PlayerInfo[playerid][gSlot5_gun]);
	    INI_WriteInt(ufile, "gSlot5_ammo", PlayerInfo[playerid][gSlot5_ammo]);
	    INI_WriteInt(ufile, "gSlot6_gun", PlayerInfo[playerid][gSlot6_gun]);
	    INI_WriteInt(ufile, "gSlot6_ammo", PlayerInfo[playerid][gSlot6_ammo]);
	    INI_WriteInt(ufile, "gSlot7_gun", PlayerInfo[playerid][gSlot7_gun]);
	    INI_WriteInt(ufile, "gSlot7_ammo", PlayerInfo[playerid][gSlot7_ammo]);
	    INI_WriteInt(ufile, "gSlot8_gun", PlayerInfo[playerid][gSlot8_gun]);
	    INI_WriteInt(ufile, "gSlot8_ammo", PlayerInfo[playerid][gSlot8_ammo]);
	    INI_WriteInt(ufile, "gSlot9_gun", PlayerInfo[playerid][gSlot9_gun]);
	    INI_WriteInt(ufile, "gSlot9_ammo", PlayerInfo[playerid][gSlot9_ammo]);
	    INI_WriteInt(ufile, "gSlot10_gun", PlayerInfo[playerid][gSlot10_gun]);
	    INI_WriteInt(ufile, "gSlot10_ammo", PlayerInfo[playerid][gSlot10_ammo]);
	    INI_WriteInt(ufile, "gSlot11_gun", PlayerInfo[playerid][gSlot11_gun]);
	    INI_WriteInt(ufile, "gSlot11_ammo", PlayerInfo[playerid][gSlot11_ammo]);
	    INI_WriteInt(ufile, "gSlot12_gun", PlayerInfo[playerid][gSlot12_gun]);
	    INI_WriteInt(ufile, "gSlot12_ammo", PlayerInfo[playerid][gSlot12_ammo]);

		INI_Close(ufile);
	}
	return 1;
}
forward LoadUser_data(playerid, name[], value[]);
public LoadUser_data(playerid, name[], value[])
{
	INI_String("pPass", PlayerInfo[playerid][pPass], 129);
	INI_Int("Cash",PlayerInfo[playerid][Cash]);
	INI_Int("House",PlayerInfo[playerid][House]);
	INI_Float("pPosX",PlayerInfo[playerid][pPosX]);
	INI_Float("pPosY",PlayerInfo[playerid][pPosY]);
	INI_Float("pPosZ",PlayerInfo[playerid][pPosZ]);
	INI_Float("Health",PlayerInfo[playerid][Health]);
	INI_Float("Armour",PlayerInfo[playerid][Armour]);

	INI_Int("gSlot0_gun", PlayerInfo[playerid][gSlot0_gun]);
    INI_Int("gSlot0_ammo", PlayerInfo[playerid][gSlot0_ammo]);
    INI_Int("gSlot1_gun", PlayerInfo[playerid][gSlot1_gun]);
    INI_Int("gSlot1_ammo", PlayerInfo[playerid][gSlot1_ammo]);
    INI_Int("gSlot2_gun", PlayerInfo[playerid][gSlot2_gun]);
    INI_Int("gSlot2_ammo", PlayerInfo[playerid][gSlot2_ammo]);
    INI_Int("gSlot3_gun", PlayerInfo[playerid][gSlot3_gun]);
    INI_Int("gSlot3_ammo", PlayerInfo[playerid][gSlot3_ammo]);
    INI_Int("gSlot4_gun", PlayerInfo[playerid][gSlot4_gun]);
    INI_Int("gSlot4_ammo", PlayerInfo[playerid][gSlot4_ammo]);
    INI_Int("gSlot5_gun", PlayerInfo[playerid][gSlot5_gun]);
    INI_Int("gSlot5_ammo", PlayerInfo[playerid][gSlot5_ammo]);
    INI_Int("gSlot6_gun", PlayerInfo[playerid][gSlot6_gun]);
    INI_Int("gSlot6_ammo", PlayerInfo[playerid][gSlot6_ammo]);
    INI_Int("gSlot7_gun", PlayerInfo[playerid][gSlot7_gun]);
    INI_Int("gSlot7_ammo", PlayerInfo[playerid][gSlot7_ammo]);
    INI_Int("gSlot8_gun", PlayerInfo[playerid][gSlot8_gun]);
    INI_Int("gSlot8_ammo", PlayerInfo[playerid][gSlot8_ammo]);
    INI_Int("gSlot9_gun", PlayerInfo[playerid][gSlot9_gun]);
    INI_Int("gSlot9_ammo", PlayerInfo[playerid][gSlot9_ammo]);
    INI_Int("gSlot10_gun", PlayerInfo[playerid][gSlot10_gun]);
    INI_Int("gSlot10_ammo", PlayerInfo[playerid][gSlot10_ammo]);
    INI_Int("gSlot11_gun", PlayerInfo[playerid][gSlot11_gun]);
    INI_Int("gSlot11_ammo", PlayerInfo[playerid][gSlot11_ammo]);
    INI_Int("gSlot12_gun", PlayerInfo[playerid][gSlot12_gun]);
    INI_Int("gSlot12_ammo", PlayerInfo[playerid][gSlot12_ammo]);

    return 1;
}

stock SaveZoneData(ZoneID)
{
	new file[40];
	format(file, sizeof(file), ZONE_FILE, ZoneID);
	new INI:ufile = INI_Open(file);
	INI_WriteInt(ufile, "Color",ZoneInfo[ZoneID][Color]);
	INI_WriteFloat(ufile, "MinX", ZoneInfo[ZoneID][MinX]);
	INI_WriteFloat(ufile, "MinY", ZoneInfo[ZoneID][MinY]);
	INI_WriteFloat(ufile, "MaxX",ZoneInfo[ZoneID][MaxX]);
	INI_WriteFloat(ufile, "MaxY", ZoneInfo[ZoneID][MaxY]);

	INI_Close(ufile);
	return 1;
}
forward LoadZone_data(ZoneID, name[], value[]);
public LoadZone_data(ZoneID, name[], value[])
{
	INI_Int("Color",ZoneInfo[ZoneID][Color]);
	INI_Float("MinX", ZoneInfo[ZoneID][MinX]);
	INI_Float("MinY", ZoneInfo[ZoneID][MinY]);
	INI_Float("MaxX",ZoneInfo[ZoneID][MaxX]);
	INI_Float("MaxY", ZoneInfo[ZoneID][MaxY]);

    return 1;
}


stock SaveHouseData(House_ID)
{
	new file[40];
	format(file, sizeof(file), HOUSE_FILE, House_ID);
	if(fexist(file))
	{
		new INI:ufile = INI_Open(file);
		INI_WriteString(ufile, "Owner",H_INFO[House_ID][Owner]);
		INI_WriteFloat(ufile, "HouseX", H_INFO[House_ID][HouseX]);
		INI_WriteFloat(ufile, "HouseY", H_INFO[House_ID][HouseY]);
		INI_WriteFloat(ufile, "HouseZ", H_INFO[House_ID][HouseZ]);
		INI_WriteInt(ufile, "Value",H_INFO[House_ID][Value]);
		INI_WriteInt(ufile, "VehModel",H_INFO[House_ID][VehModel]);
		INI_WriteInt(ufile, "CarColor1",H_INFO[House_ID][CarColor1]);
		INI_WriteInt(ufile, "CarColor2",H_INFO[House_ID][CarColor2]);
		INI_WriteInt(ufile, "VehWheel",H_INFO[House_ID][VehWheel]);
		INI_WriteBool(ufile, "VehNitro",H_INFO[House_ID][VehNitro]);
		INI_WriteBool(ufile, "VehHydro",H_INFO[House_ID][VehHydro]);
		INI_WriteFloat(ufile, "CarX", H_INFO[House_ID][CarX]);
		INI_WriteFloat(ufile, "CarY", H_INFO[House_ID][CarY]);
		INI_WriteFloat(ufile, "CarZ", H_INFO[House_ID][CarZ]);
		INI_WriteFloat(ufile, "CarA", H_INFO[House_ID][CarA]);
		INI_Close(ufile);
	}
	return 1;
}
forward LoadHouse_data(House_ID, name[], value[]);
public LoadHouse_data(House_ID, name[], value[])
{
	INI_String("Owner",H_INFO[House_ID][Owner],64);
	INI_Float("HouseX", H_INFO[House_ID][HouseX]);
	INI_Float("HouseY", H_INFO[House_ID][HouseY]);
	INI_Float("HouseZ", H_INFO[House_ID][HouseZ]);
	INI_Int("Value",H_INFO[House_ID][Value]);
	INI_Int("VehModel",H_INFO[House_ID][VehModel]);
	INI_Int("CarColor1",H_INFO[House_ID][CarColor1]);
	INI_Int("CarColor2",H_INFO[House_ID][CarColor2]);
	INI_Int("VehWheel",H_INFO[House_ID][VehWheel]);
	INI_Bool("VehNitro",H_INFO[House_ID][VehNitro]);
	INI_Bool("VehHydro",H_INFO[House_ID][VehHydro]);
	INI_Float("CarX", H_INFO[House_ID][CarX]);
	INI_Float("CarY", H_INFO[House_ID][CarY]);
	INI_Float("CarZ", H_INFO[House_ID][CarZ]);
	INI_Float("CarA", H_INFO[House_ID][CarA]);
    return 1;
}

forward ServerOneSecondVariables();
public ServerOneSecondVariables()
{
	for(new p = 0; p < MAX_PLAYERS; p++)
	{
		if(!IsPlayerConnected(p)) continue;
		if(P_INFO[p][InZone] != GetPlayerZone(p))
		{
			OnPlayerEnterZone(p,GetPlayerZone(p));
			OnPlayerExitZone(p,P_INFO[p][InZone]);
		}
		P_INFO[p][InZone] = GetPlayerZone(p);

	}
	for(new k = 0; k < MAX_ZONES; k++)
	{
		if(!ZoneInfo[k][locked]) continue;
		if(ZoneInfo[k][timer_lock] < 1) ZoneInfo[k][locked] = false;
		ZoneInfo[k][timer_lock]--;
	}
	if(U_Attack_Zone > -1)
	{ 
		new temp[64];
		ZoneInfo[U_Attack_Zone][timercap] --;
		format(temp,64,"Attack 00:%02d",ZoneInfo[U_Attack_Zone][timercap]);
		TextDrawSetString(ZoneTD, temp);
		TextDrawShowForAll(ZoneTD);
		if(ZoneInfo[U_Attack_Zone][timercap] < 1) CaptureZone(U_Attack_by,U_Attack_Zone);
	}

}

forward ServerTenSecondVariables();
public ServerTenSecondVariables()
{
	for(new i = 0; i < MAX_PLAYERS; i++ )
	{
		if(!IsPlayerConnected(i)) continue;
		if(Team[i] == TEAM_GROVE_STREET) SetPVarInt(i,"zonemoney",GetPVarInt(i,"zonemoney") + 83 * GroveCount);
		else if(Team[i] == TEAM_BALLAS) SetPVarInt(i,"zonemoney",GetPVarInt(i,"zonemoney") + 83 * BallasCount);
		else if(Team[i] == TEAM_VAGOS) SetPVarInt(i,"zonemoney",GetPVarInt(i,"zonemoney") + 83 * VagosCount);
	}	

	return 1;
}
stock OnPlayerEnterZone(playerid,ZoneID)
{
	if(ZoneID == U_Attack_Zone)
	{
		SendClientMessage(playerid,0x909090FF,"vared jang shodi");
	}
	return 1;
}

stock OnPlayerExitZone(playerid,ZoneID)
{

	if(ZoneID == U_Attack_Zone)
	{
		if(U_Attack_by == playerid)
		{
			FailCaptureZone(ZoneID);
			SendClientMessage(playerid,0x909090FF,"sishdon");
		}
	}
	return 1;
}
stock GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, &Float:z, Float:distance)
{
    new Float:a;
    GetPlayerPos(playerid, x, y, z);
    if (IsPlayerInAnyVehicle(playerid))
        GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
    else
        GetPlayerFacingAngle(playerid, a);
    x += (distance * floatsin(-a, degrees));
    y += (distance * floatcos(-a, degrees));
    return 1;
}

stock UserFile(playerid)
{
    new string[128];
    format(string,sizeof(string),USER_FILE,GetName(playerid));
    return string;
}
stock ZoneFile(playerid)
{
    new string[128];
    format(string,sizeof(string),ZONE_FILE,GetName(playerid));
    return string;
}

stock GetName(playerid)
{
	new pName[24];
    GetPlayerName(playerid, (pName), sizeof(pName));
    return pName;
}



/*----------------------------------------------------\\
// ***          Timer functions                    ****/




forward GivePoolKill(playerid);
public GivePoolKill(playerid)
{
    PlayerTextDrawHide(playerid,Pooltextdraw[playerid]);
    return 1;
}


/*/----------------------------------------------------\\
//        ******   last timer   ******                    */ 

stock LoadPlayerTextdraws(playerid)
{
	Text_Player[playerid][0] = CreatePlayerTextDraw(playerid, 222.000, 5.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][0], 122.000, 93.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][0], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][0], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][0], 350);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][0], 0.000, 0.000, 0.000, 1.799);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][0], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][0], 1);

	Text_Player[playerid][1] = CreatePlayerTextDraw(playerid, 266.000, 8.000, "$ 700");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][1], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][1], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][1], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][1], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][1], 1);

	Text_Player[playerid][2] = CreatePlayerTextDraw(playerid, 257.000, 80.000, "sawn-off");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][2], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][2], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][2], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][2], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][2], 1);

	Text_Player[playerid][3] = CreatePlayerTextDraw(playerid, 222.000, 103.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][3], 122.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][3], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][3], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][3], 352);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][3], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][3], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][3], 1);

	Text_Player[playerid][4] = CreatePlayerTextDraw(playerid, 266.000, 104.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][4], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][4], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][4], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][4], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][4], 1);

	Text_Player[playerid][5] = CreatePlayerTextDraw(playerid, 268.000, 178.000, "Micro");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][5], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][5], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][5], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][5], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][5], 1);

	Text_Player[playerid][6] = CreatePlayerTextDraw(playerid, 222.000, 198.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][6], 122.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][6], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][6], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][6], 356);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][6], 0.000, 0.000, 0.000, 1.600);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][6], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][6], 1);

	Text_Player[playerid][7] = CreatePlayerTextDraw(playerid, 266.000, 199.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][7], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][7], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][7], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][7], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][7], 1);

	Text_Player[playerid][8] = CreatePlayerTextDraw(playerid, 274.000, 270.000, "M4");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][8], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][8], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][8], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][8], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][8], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][8], 1);

	Text_Player[playerid][9] = CreatePlayerTextDraw(playerid, 223.000, 293.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][9], 121.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][9], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][9], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][9], 358);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][9], 0.000, 0.000, 0.000, 1.799);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][9], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][9], 1);

	Text_Player[playerid][10] = CreatePlayerTextDraw(playerid, 265.000, 294.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][10], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][10], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][10], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][10], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][10], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][10], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][10], 1);

	Text_Player[playerid][11] = CreatePlayerTextDraw(playerid, 249.000, 364.000, "Snipe Rifle");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][11], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][11], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][11], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][11], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][11], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][11], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][11], 1);

	Text_Player[playerid][12] = CreatePlayerTextDraw(playerid, 349.000, 5.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][12], 120.000, 93.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][12], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][12], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][12], 373);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][12], -909.000, 122.000, 384.000, 1.600);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][12], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][12], 1);

	Text_Player[playerid][13] = CreatePlayerTextDraw(playerid, 385.000, 8.000, "$ 700");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][13], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][13], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][13], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][13], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][13], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][13], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][13], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][13], 1);

	Text_Player[playerid][14] = CreatePlayerTextDraw(playerid, 380.000, 23.000, "Armour");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][14], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][14], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][14], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][14], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][14], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][14], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][14], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][14], 1);

	Text_Player[playerid][15] = CreatePlayerTextDraw(playerid, 349.000, 103.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][15], 122.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][15], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][15], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][15], 342);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][15], 0.000, 0.000, 0.000, 0.699);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][15], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][15], 1);

	Text_Player[playerid][16] = CreatePlayerTextDraw(playerid, 387.000, 104.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][16], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][16], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][16], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][16], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][16], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][16], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][16], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][16], 1);

	Text_Player[playerid][17] = CreatePlayerTextDraw(playerid, 378.000, 176.000, "Granade");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][17], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][17], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][17], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][17], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][17], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][17], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][17], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][17], 1);

	Text_Player[playerid][18] = CreatePlayerTextDraw(playerid, 350.000, 198.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][18], 119.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][18], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][18], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][18], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][18], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][18], 361);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][18], 0.000, 0.000, -21.000, 1.799);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][18], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][18], 1);

	Text_Player[playerid][19] = CreatePlayerTextDraw(playerid, 387.000, 199.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][19], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][19], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][19], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][19], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][19], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][19], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][19], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][19], 1);

	Text_Player[playerid][20] = CreatePlayerTextDraw(playerid, 389.000, 270.000, "Flame");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][20], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][20], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][20], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][20], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][20], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][20], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][20], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][20], 1);

	Text_Player[playerid][21] = CreatePlayerTextDraw(playerid, 350.000, 293.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][21], 119.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][21], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][21], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][21], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][21], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][21], 348);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][21], 0.000, 0.000, 0.000, 1.199);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][21], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][21], 1);

	Text_Player[playerid][22] = CreatePlayerTextDraw(playerid, 387.000, 364.000, "Deagle");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][22], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][22], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][22], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][22], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][22], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][22], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][22], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][22], 1);

	Text_Player[playerid][23] = CreatePlayerTextDraw(playerid, 387.000, 296.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][23], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][23], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][23], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][23], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][23], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][23], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][23], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][23], 1);

	Text_Player[playerid][24] = CreatePlayerTextDraw(playerid, 93.000, 195.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][24], 122.000, 93.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][24], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][24], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][24], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][24], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][24], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][24], 351);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][24], 0.000, 0.000, -25.000, 1.399);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][24], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][24], 1);

	Text_Player[playerid][25] = CreatePlayerTextDraw(playerid, 131.000, 199.000, "$ 700");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][25], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][25], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][25], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][25], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][25], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][25], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][25], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][25], 1);

	Text_Player[playerid][26] = CreatePlayerTextDraw(playerid, 127.000, 269.000, "Combat");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][26], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][26], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][26], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][26], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][26], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][26], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][26], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][26], 1);

	Text_Player[playerid][27] = CreatePlayerTextDraw(playerid, 94.000, 101.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][27], 122.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][27], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][27], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][27], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][27], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][27], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][27], 372);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][27], 0.000, 0.000, 0.000, 1.299);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][27], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][27], 1);

	Text_Player[playerid][28] = CreatePlayerTextDraw(playerid, 130.000, 104.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][28], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][28], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][28], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][28], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][28], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][28], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][28], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][28], 1);

	Text_Player[playerid][29] = CreatePlayerTextDraw(playerid, 128.000, 178.000, "Tec - 9");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][29], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][29], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][29], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][29], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][29], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][29], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][29], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][29], 1);

	Text_Player[playerid][30] = CreatePlayerTextDraw(playerid, 476.000, 198.000, "_");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][30], 119.000, 90.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][30], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][30], 85);
	PlayerTextDrawFont(playerid, Text_Player[playerid][30], 5);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][30], 0);
	PlayerTextDrawSetPreviewModel(playerid, Text_Player[playerid][30], 355);
	PlayerTextDrawSetPreviewRot(playerid, Text_Player[playerid][30], 0.000, 0.000, -21.000, 1.799);
	PlayerTextDrawSetPreviewVehCol(playerid, Text_Player[playerid][30], 0, 0);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][30], 1);

	Text_Player[playerid][31] = CreatePlayerTextDraw(playerid, 512.000, 199.000, "$ 600");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][31], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][31], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][31], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][31], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][31], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][31], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][31], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][31], 1);

	Text_Player[playerid][32] = CreatePlayerTextDraw(playerid, 512.000, 270.000, "AK - 47");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][32], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][32], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][32], -1883467777);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][32], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][32], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][32], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][32], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][32], 1);

	Text_Player[playerid][33] = CreatePlayerTextDraw(playerid, 542.000, 320.000, "LD_BEAT:cross");
	PlayerTextDrawTextSize(playerid, Text_Player[playerid][33], 33.000, 34.000);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][33], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][33], -16776961);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][33], 255);
	PlayerTextDrawFont(playerid, Text_Player[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid, Text_Player[playerid][33], 1);

	Text_Player[playerid][34] = CreatePlayerTextDraw(playerid, 474.000, 330.000, "Close  >>");
	PlayerTextDrawLetterSize(playerid, Text_Player[playerid][34], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, Text_Player[playerid][34], 1);
	PlayerTextDrawColor(playerid, Text_Player[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, Text_Player[playerid][34], 1);
	PlayerTextDrawSetOutline(playerid, Text_Player[playerid][34], 1);
	PlayerTextDrawBackgroundColor(playerid, Text_Player[playerid][34], 150);
	PlayerTextDrawFont(playerid, Text_Player[playerid][34], 2);
	PlayerTextDrawSetProportional(playerid, Text_Player[playerid][34], 1);

    /////////--------   GivePoolTextDraw --------  /////////

	Pooltextdraw[playerid] = CreatePlayerTextDraw(playerid, 608.000000, 98.000000, "+0000000");
	PlayerTextDrawFont(playerid, Pooltextdraw[playerid], 3);
	PlayerTextDrawLetterSize(playerid, Pooltextdraw[playerid], 0.545831, 2.349997);
	PlayerTextDrawTextSize(playerid, Pooltextdraw[playerid], 617.500000, 14.500000);
	PlayerTextDrawSetOutline(playerid, Pooltextdraw[playerid], 2);
	PlayerTextDrawSetShadow(playerid, Pooltextdraw[playerid], 0);
	PlayerTextDrawAlignment(playerid, Pooltextdraw[playerid], 3);
	PlayerTextDrawColor(playerid, Pooltextdraw[playerid], 2013200639);
	PlayerTextDrawBackgroundColor(playerid, Pooltextdraw[playerid], 255);
	PlayerTextDrawSetProportional(playerid, Pooltextdraw[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, Pooltextdraw[playerid], 0);



	////// --------- INVENTORY ------------////
    PlayerTD[playerid][0] = CreatePlayerTextDraw(playerid, 313.000000, 24.000000, "_");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][0], 0);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][0], 0.783333, 41.450008);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][0], 623.500000, 581.500000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][0], -159);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][0], 0);

    PlayerTD[playerid][1] = CreatePlayerTextDraw(playerid, 246.000000, 27.000000, "Inventory");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][1], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][1], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][1], 388.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][1], 0);

    PlayerTD[playerid][2] = CreatePlayerTextDraw(playerid, 312.000000, 52.000000, "_");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][2], 1);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][2], 0.654166, 0.500006);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][2], 298.500000, 562.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][2], 135);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][2], 0);

    PlayerTD[playerid][3] = CreatePlayerTextDraw(playerid, 79.000000, 68.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][3], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][3], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][3], 83.500000, 101.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][3], -16776961);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][3], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][3], -1094795521);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][3], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][3], 1240);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][3], -10.000000, 0.000000, -16.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][3], 1, 1);

    PlayerTD[playerid][4] = CreatePlayerTextDraw(playerid, 253.000000, 66.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][4], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][4], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][4], 91.000000, 101.500000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][4], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][4], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][4], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][4], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][4], 255);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][4], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][4], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][4], 1242);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][4], -10.000000, 0.000000, -20.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][4], 1, 1);

    PlayerTD[playerid][5] = CreatePlayerTextDraw(playerid, 77.000000, 209.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][5], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][5], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][5], 84.500000, 101.500000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][5], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][5], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][5], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][5], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][5], 255);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][5], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][5], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][5], 370);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][5], -10.000000, 0.000000, 218.000000, 1.750000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][5], 1, 1);

    PlayerTD[playerid][6] = CreatePlayerTextDraw(playerid, 252.000000, 204.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][6], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][6], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][6], 92.000000, 103.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][6], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][6], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][6], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][6], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][6], 255);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][6], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][6], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][6], 19241);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][6], -62.000000, -2.000000, 0.000000, 0.400000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][6], 1, 1);

    PlayerTD[playerid][7] = CreatePlayerTextDraw(playerid, 439.000000, 202.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][7], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][7], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][7], 91.000000, 103.500000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][7], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][7], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][7], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][7], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][7], 255);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][7], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][7], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][7], 1010);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][7], -27.000000, -4.000000, -28.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][7], 1, 1);

    PlayerTD[playerid][8] = CreatePlayerTextDraw(playerid, 437.000000, 64.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][8], 5);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][8], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][8], 92.000000, 103.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][8], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][8], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][8], 125);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][8], 255);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][8], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][8], 1);
    PlayerTextDrawSetPreviewModel(playerid, PlayerTD[playerid][8], 2358);
    PlayerTextDrawSetPreviewRot(playerid, PlayerTD[playerid][8], -25.000000, 0.000000, 146.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, PlayerTD[playerid][8], 1, 1);

    PlayerTD[playerid][9] = CreatePlayerTextDraw(playerid, 84.000000, 170.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][9], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][9], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][9], 164.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][9], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][9], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][9], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][9], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][9], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][9], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][9], 0);

    PlayerTD[playerid][10] = CreatePlayerTextDraw(playerid, 260.000000, 169.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][10], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][10], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][10], 352.000000, 21.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][10], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][10], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][10], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][10], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][10], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][10], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][10], 0);

    PlayerTD[playerid][11] = CreatePlayerTextDraw(playerid, 443.000000, 167.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][11], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][11], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][11], 531.500000, 21.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][11], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][11], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][11], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][11], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][11], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][11], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][11], 0);

    PlayerTD[playerid][12] = CreatePlayerTextDraw(playerid, 84.000000, 313.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][12], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][12], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][12], 164.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][12], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][12], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][12], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][12], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][12], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][12], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][12], 0);

    PlayerTD[playerid][13] = CreatePlayerTextDraw(playerid, 262.000000, 308.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][13], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][13], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][13], 350.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][13], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][13], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][13], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][13], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][13], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][13], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][13], 0);

    PlayerTD[playerid][14] = CreatePlayerTextDraw(playerid, 447.000000, 308.000000, "Tedad : 56");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][14], 2);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][14], 0.308333, 1.750000);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][14], 538.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][14], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][14], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][14], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][14], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][14], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][14], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][14], 0);

    PlayerTD[playerid][15] = CreatePlayerTextDraw(playerid, 312.000000, 337.000000, "_");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][15], 1);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][15], 0.654166, 0.500006);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][15], 298.500000, 562.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][15], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][15], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][15], 2);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][15], -1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][15], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][15], 135);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][15], 0);

    PlayerTD[playerid][16] = CreatePlayerTextDraw(playerid, 286.000000, 362.000000, "Close");
    PlayerTextDrawFont(playerid, PlayerTD[playerid][16], 1);
    PlayerTextDrawLetterSize(playerid, PlayerTD[playerid][16], 0.604166, 2.449999);
    PlayerTextDrawTextSize(playerid, PlayerTD[playerid][16], 341.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlayerTD[playerid][16], 1);
    PlayerTextDrawSetShadow(playerid, PlayerTD[playerid][16], 0);
    PlayerTextDrawAlignment(playerid, PlayerTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, PlayerTD[playerid][16], -1962934017);
    PlayerTextDrawBackgroundColor(playerid, PlayerTD[playerid][16], 255);
    PlayerTextDrawBoxColor(playerid, PlayerTD[playerid][16], 50);
    PlayerTextDrawUseBox(playerid, PlayerTD[playerid][16], 0);
    PlayerTextDrawSetProportional(playerid, PlayerTD[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, PlayerTD[playerid][16], 1);



    /* --------- zone time textdraw -----------*/

	ZoneTD = TextDrawCreate(491.000000, 291.000000, "Attack  00:00");
	TextDrawFont(ZoneTD, 2);
	TextDrawLetterSize(ZoneTD, 0.395832, 1.850000);
	TextDrawTextSize(ZoneTD, 681.000000, 17.000000);
	TextDrawSetOutline(ZoneTD, 2);
	TextDrawSetShadow(ZoneTD, 0);
	TextDrawAlignment(ZoneTD, 1);
	TextDrawColor(ZoneTD, -1061109505);
	TextDrawBackgroundColor(ZoneTD, 255);
	TextDrawBoxColor(ZoneTD, 50);
	TextDrawUseBox(ZoneTD, 0);
	TextDrawSetProportional(ZoneTD, 1);
	TextDrawSetSelectable(ZoneTD, 0);

}

// -------------------------------------------------
AddThousandsSeparators(number, const separator[] = ",")
{
	new output[15];
	format(output, sizeof(output), "%d", number);
 
	for(new i = strlen(output) - 3; i > 0 && output[i-1] != '-'; i -= 3)
	{
		strins(output, separator, i);
	}
 
	return output;
}

stock IsPlayerInArea(playerid, Float:PminX, Float:PminY, Float:PmaxX, Float:PmaxY)
{
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);

	if(X >= PminX && X <= PmaxX && Y >= PminY && Y <= PmaxY)  return 1;
	
	return 0;
}

stock IsPlayerInZone(playerid,ZoneID)
{

	if(IsPlayerInArea(playerid,ZoneInfo[ZoneID][MinX],ZoneInfo[ZoneID][MinY],ZoneInfo[ZoneID][MaxX],ZoneInfo[ZoneID][MaxY])) return 1;

	return 0;
}
stock GetFreeZoneID()//
{
	new file[40];
    for(new h = 0; h < MAX_ZONES; h++)
    {
        format(file, sizeof(file), ZONE_FILE, h);
        if(!fexist(file))
        {
            return h;
		}
	}
    return -1;
}

stock GetFreeHouseeID()//
{
	new file[40];
    for(new h = 1; h < MAX_HOUSES; h++)
    {
        format(file, sizeof(file), HOUSE_FILE, h);
        if(!fexist(file))
        {
            return h;
		}
	}
    return -1;
}

stock GivePool(playerid,amount)
{
	new str[34];
	format(str,sizeof str,"+%d",amount);
	PlayerTextDrawColor(playerid, Pooltextdraw[playerid], 2013200639);
	PlayerInfo[playerid][Cash] += amount;
	GivePlayerMoney(playerid,amount);
	SetPlayerScore(playerid,PlayerInfo[playerid][Cash]);
	if(amount < 0){
		PlayerTextDrawColor(playerid, Pooltextdraw[playerid], -16776961);
		format(str,sizeof str,"%d",amount);
	} 
	PlayerTextDrawSetString(playerid, Pooltextdraw[playerid],str);
	PlayerTextDrawShow(playerid, Pooltextdraw[playerid]);
	SetTimerEx("GivePoolKill",5000, false, "i", playerid);
}

stock UsersMenu(playerid)
{
	new str[256],temp[32], x = 0;
	for(new i = 0; i < MAX_PLAYERS; i++ )
	{
		if(!IsPlayerConnected(playerid)) continue;
		format(temp,32,"%s( %d )\n",GetName(i),i)
		strcat(str,temp);
		UserMenuArr[x] = i;
		x++;
	}
	ShowPlayerDialog(playerid,USERLIST_MENU,DIALOG_STYLE_LIST,"{FFFF00}List Player Haye Online",str,"Entekhab","Cancel");
}
stock numbersep(number)
{
	new str[32];
	new str2[32],c,k;
	format(str,32,"%d",number);
	c = strlen(str);
	k = c%3;
	for(new i = 0; i < c; i++)
	{
		if(k == 0)
		{
			strcat(str2,",");
			k += 3;
		}
		strcat(str2,str[i]);
		k --;
	}
	return str2;
}


CMD:givemoney(playerid,params[]){
	new ID,money;
	if(sscanf(params, "id", ID, money))return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade: /GiveMoney (Player Name/ID) (Money)");
	if((!IsPlayerConnected(ID))) return SendClientMessage(playerid,0x909090FF,"[ERROR]: {FFFFFF}In Bazikon Dar Server Nemibashad.");
	GivePool(ID,money);
	return 1;
}
forward SendPos(playerid);
public SendPos(playerid)
{
	new Float:x,Float:y,Float:z,Float:Angle,str[256],Float:CPS[3];
	GetPlayerCameraPos(playerid, CPS[0], CPS[1], CPS[2]);
	GetPlayerPos(playerid,x,y,z);
	GetPlayerFacingAngle(playerid,Angle);
	format(str,256,"Pos = %.2f,%.2f,%.2f, Angel = %.2f\n Camera Pos = %.2f  ,  %.2f  ,  %.2f",x,y,z,Angle,CPS[0],CPS[1],CPS[2]);
	SendClientMessage(playerid,0x808080FF,str);
	return 1;
}
stock SetPlayerTeamFromClass(playerid,classid)
{
	switch(classid)
	{
		case 0..2:
		{
			Team[playerid] = TEAM_GROVE_STREET;
		}
		case 3..5:
		{
			Team[playerid] = TEAM_BALLAS;
		}
		case 6..8:
		{
			Team[playerid] =TEAM_VAGOS;
		}
		case 9..11:
		{
			Team[playerid] =TEAM_POLICE;
		}
	}
	
	return 1;
}

stock Buy(playerid,price)
{
	if(PlayerInfo[playerid][Cash] >= price)
	{
		GivePool(playerid,(-1) * price);
		return 0;
	}
	return 1;
}
stock CreateZone(Float:Minx,Float:Miny,Float:Maxx,Float:Maxy)
{
	new ZoneID = GetFreeZoneID();
	ZoneInfo[ZoneID][Color] = ZONE_COLOR;
	ZoneInfo[ZoneID][Owner] = 0;
	ZoneInfo[ZoneID][MinX] = Minx;
	ZoneInfo[ZoneID][MinY] = Miny;
	ZoneInfo[ZoneID][MaxX] = Maxx;
	ZoneInfo[ZoneID][MaxY] = Maxy;
	ZoneInfo[ZoneID][_Zone] = GangZoneCreate(ZoneInfo[ZoneID][MinX],ZoneInfo[ZoneID][MinY],ZoneInfo[ZoneID][MaxX],ZoneInfo[ZoneID][MaxY]);
	SaveZoneData(ZoneID);
	GangZoneShowForAll(ZoneInfo[ZoneID][_Zone],ZoneInfo[ZoneID][Color]);
}

stock GetPlayerZone(playerid)
{
	for(new g = 0; g < MAX_ZONES; g++)
	{
		if(IsPlayerInZone(playerid,g)) return g;
	}
	return NO_ZONE;
}


stock CaptureZone(playerid,ZoneID)
{
	GangZoneStopFlashForAll(ZoneInfo[ZoneID][_Zone]);
	ZoneInfo[ZoneID][Color] = Team[playerid];
	GangZoneShowForAll(ZoneInfo[ZoneID][_Zone],ZoneInfo[ZoneID][Color]);
	TextDrawHideForAll(ZoneTD);
	ZoneInfo[ZoneID][locked] = true;
	ZoneInfo[ZoneID][timer_lock] = 40;
	U_Attack_Zone = -1;
	U_Attack_by = -1;
	for(new r = 0; r < MAX_PLAYERS; r++)
	{
		if(!IsPlayerConnected(r)) continue;
		if(Team[playerid] != Team[r]) continue;
		GivePool(r,15000);
	}
	CountZones();
	return 1;
}
stock FailCaptureZone(ZoneID)
{
	GangZoneStopFlashForAll(ZoneInfo[ZoneID][_Zone]);
	TextDrawHideForAll(ZoneTD);
	U_Attack_Zone = -1;
	U_Attack_by = -1;
	return 1;
}
stock CreateHouse(HouseIDX)
{
	new str[128];
	format(str,128,"{FFFFFF}Khane Shomare : %d\n{FFFF00}Geymat Khane :  $ %d\n{26ADFF}Saheb Khane : {%s} %s !",HouseIDX,H_INFO[HouseIDX][Value],SahebKhaneColor(HouseIDX),H_INFO[HouseIDX][Owner]);
	H_INFO[HouseIDX][CP] = CreateDynamicPickup(1273, 23,H_INFO[HouseIDX][HouseX],H_INFO[HouseIDX][HouseY],H_INFO[HouseIDX][HouseZ], 0, 0, -1, 40.0);
	H_INFO[HouseIDX][Text] = Create3DTextLabel(str, YELLOW,H_INFO[HouseIDX][HouseX],H_INFO[HouseIDX][HouseY],H_INFO[HouseIDX][HouseZ]+0.5, 40.0, 0, 1);
	if(H_INFO[HouseIDX][VehModel] != 0)
	{
		H_INFO[HouseIDX][_Veh] = CreateVehicle(H_INFO[HouseIDX][VehModel],H_INFO[HouseIDX][CarX],H_INFO[HouseIDX][CarY],H_INFO[HouseIDX][CarZ],H_INFO[HouseIDX][CarA],H_INFO[HouseIDX][CarColor1],H_INFO[HouseIDX][CarColor2],10000);
		if(H_INFO[HouseIDX][VehNitro] == true) AddVehicleComponent(H_INFO[HouseIDX][_Veh],1010);
		if(H_INFO[HouseIDX][VehHydro] == true) AddVehicleComponent(H_INFO[HouseIDX][_Veh],1087);
		if(H_INFO[HouseIDX][VehWheel] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);
		/*if(H_INFO[HouseIDX][VehComp1] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);
		if(H_INFO[HouseIDX][VehComp2] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);
		if(H_INFO[HouseIDX][VehComp3] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);
		if(H_INFO[HouseIDX][VehComp4] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);
		if(H_INFO[HouseIDX][VehComp5] > 0) AddVehicleComponent(H_INFO[HouseIDX][_Veh],H_INFO[HouseIDX][VehWheel]);*/
	}
	return 1;
}
stock SahebKhaneColor(HouseIDK)
{
	new pp[16];
	if(!strcmp(H_INFO[HouseIDK][Owner],"Bedun Saheb"))
	{
		format(pp,16,"FF0000");
	} else {
		format(pp,16,"00FF00");
	}
	return pp;


}

stock CountZones()
{
	GroveCount = 0;
	BallasCount = 0;
	VagosCount = 0;
	for(new e = 0; e < MAX_ZONES; e++)
	{
		if(ZoneInfo[e][Color] == TEAM_GROVE_STREET)
		{
			GroveCount ++;
		}
		else if(ZoneInfo[e][Color] == TEAM_BALLAS)
		{
			BallasCount ++;
		}
		else if(ZoneInfo[e][Color] == TEAM_BALLAS)
		{
			VagosCount ++;
		}
	}
	new kstr[128];
	format(kstr,128,"{00FFC5} Gang {F5EA00} Vagos\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",VagosCount);
	Update3DTextLabelText(VagosFam,YELLOW,kstr);
	format(kstr,128,"{00FFC5} Gang {FF0061} Ballas\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",BallasCount);
	Update3DTextLabelText(BallasFam,YELLOW,kstr);
	format(kstr,128,"{00FFC5} Gang {00FF6C} Grove Street\n{00FFC5}Tedad Kol Zone Ha : {F5EA00} %d Zone",GroveCount);
	Update3DTextLabelText(GroveFam,YELLOW,kstr);
	return 1;
}

CMD:pos(playerid,params[])
{
	#pragma unused params
	CallRemoteFunction("SendPos", "d", playerid);
	return 1;
}
CMD:setpos(playerid,params[])
{
	new Float:x,Float:y,Float:z;
	if(sscanf(params, "fff", x,y,z))return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade: /setpos (x) (y) (z)");
	if(Buy(playerid,10000)) return SendClientMessage(playerid,0x909090FF,"Pool Nadari Dadash");
	SetPlayerPos(playerid,x,y,z);
	return 1;
}
CMD:ccar(playerid,params[])
{
	new Float:Pos[4],VehicleModel,color1,color2;
	if(sscanf(params, "ddd", VehicleModel, color1,color2))return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade: /Ccar (Vehicle) (Color1) (Color2");
	GetPlayerPos(playerid,Pos[0],Pos[1],Pos[2]);
	GetPlayerFacingAngle(playerid,Pos[3]);
	CreateVehicle(VehicleModel, Pos[0] + 2.0, Pos[1] + 2.0, Pos[2], Pos[3], color1, color2, 2073600);
	return 1;
}
CMD:savecar(playerid,params[])
{
	new Float:P[3],Float:Angle,string[256],color1,color2,VehicleID = GetPlayerVehicleID(playerid),VehicleModel = GetVehicleModel(GetPlayerVehicleID(playerid));
	if(sscanf(params, "dd", color1,color2))return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade: /Savecar (Color1) (Color2");
	GetVehiclePos(VehicleID, P[0], P[1], P[2]);
	GetVehicleZAngle(VehicleID, Angle);
    new File:pos=fopen("positions.txt", io_append);
    format(string, 256, "AddStaticVehicleEx(%d,%f,%f,%f,%f,%d,%d,60);\n\r",VehicleID, P[0], P[1], P[2],Angle,color1,color2);
    DestroyVehicle(VehicleID);
    CreateVehicle(VehicleModel, P[0], P[1], P[2],Angle,color1,color2,60);
    fwrite(pos, string);
    fclose(pos);
    return 1;
}
CMD:gg(playerid){
	for(new x=0; x<35; x++)
	{
		PlayerTextDrawShow(playerid, Text_Player[playerid][x]);
	}
	SelectTextDraw(playerid,-1);
	return 1;
}
/*CMD:czone(playerid,params[]) {
	new Float:Pos[3];
	GetPlayerPos(playerid,Pos[0],Pos[1],Pos[2]);
	if(GetPVarInt(playerid,"IsPoint2") == 1)
	{
		SetPVarInt(playerid,"IsPoint2",0);
		CreateZone(GetPVarFloat(playerid,"x1"),GetPVarFloat(playerid,"x2"),Pos[0],Pos[1]);

	} else {
		SetPVarInt(playerid,"IsPoint2",1);
		SetPVarFloat(playerid,"x1",Pos[0]);
		SetPVarFloat(playerid,"x2",Pos[1]);
		SendClientMessage(playerid,0x808080FF,"[CREATE - ZONE] : Point 1 Set Shod 1");
	}
	return 1;
}*/
CMD:createzone(playerid,params[])
{
	if(P_INFO[playerid][creatingzone]) return SendClientMessage(playerid,-1,"ERROR:You are already creating one zone complete it using left alt key!!");
	new Float:tempz;

	GetPlayerPos(playerid, P_INFO[playerid][minX], P_INFO[playerid][minY], tempz);
	GetPlayerPos(playerid, P_INFO[playerid][maxX], P_INFO[playerid][maxY], tempz);
	SendClientMessage(playerid,-1,"[ZONE] : Shoma Dar Hale Sakhte Zone Hastid");
	
	P_INFO[playerid][creatingzone] = true;
	P_INFO[playerid][tempzone] = -1;
	TogglePlayerControllable(playerid,false);
	
	return 1;
}
CMD:attack(playerid,params[])
{
	new ZoneID = GetPlayerZone(playerid);
	if((ZoneID) == NO_ZONE) return SendClientMessage(playerid,0x909090FF,"1");
	if(U_Attack_Zone != -1) return SendClientMessage(playerid,0x909090FF,"2");
	if(ZoneInfo[ZoneID][locked] == true) return SendClientMessage(playerid,0x909090FF,"3");
	if(Team[playerid] == ZoneInfo[ZoneID][Color]) return SendClientMessage(playerid,0x909090FF,"4");
	if(Team[playerid] == TEAM_POLICE) return SendClientMessage(playerid,0x909090FF,"5");
	/////khar
	U_Attack_Zone = ZoneID;
	GangZoneFlashForAll(ZoneInfo[ZoneID][_Zone], 0xFF0000AA);
	TextDrawShowForPlayer(playerid,ZoneTD);
	ZoneInfo[U_Attack_Zone][timercap] = 60;
	U_Attack_by = playerid;
	return 1;
}
CMD:zone(playerid)
{
	new str[128];
	format(str,128,"Your In Zone ID : %d",GetPlayerZone(playerid));
	SendClientMessage(playerid,0x909090FF,str);
	return 1;
}
CMD:moneybag(playerid)
{
	new Float:Pos[3];
	GetXYInFrontOfPlayer(playerid,Pos[0],Pos[1],Pos[2],4);
	MoneyBagPickup = CreateDynamicPickup(1550, 2, Pos[0],Pos[1],Pos[2],0 ,0 , -1 , 100);
	return 1;
}

CMD:cx(playerid,params[])
{
	new price;
	if(sscanf(params,"d",price)) return SendClientMessage(playerid,0x909090DD,"Tarighe Estefade : /cx (Price)");
	new file[40],HID = GetFreeHouseeID();
	format(file, sizeof(file), HOUSE_FILE, HID);
	new File:startfile = fopen(file, io_write);
    fclose(startfile);
    H_INFO[HID][Value] = price;
    GetPlayerPos(playerid,H_INFO[HID][HouseX], H_INFO[HID][HouseY], H_INFO[HID][HouseZ]);
    format(H_INFO[HID][Owner],64,"Bedun Saheb");
    CreateHouse(HID);
	SaveHouseData(HID);
	return 1;
}
CMD:cxcar(playerid,params[])
{
	new HID,c1,c2;
	if(sscanf(params,"ddd",HID,c1,c2)) return SendClientMessage(playerid,0x909090DD,"Tarighe Estefade : /cxcar (House ID)");
    H_INFO[HID][VehModel] = GetVehicleModel(GetPlayerVehicleID(playerid));
    GetVehiclePos(GetPlayerVehicleID(playerid), H_INFO[HID][CarX], H_INFO[HID][CarY], H_INFO[HID][CarZ]);
    GetVehicleZAngle(GetPlayerVehicleID(playerid), H_INFO[HID][CarA]);
    H_INFO[HID][CarColor1] = c1;
    H_INFO[HID][CarColor1] = c2;
    H_INFO[HID][VehWheel] = 1080;
    H_INFO[HID][VehNitro] = true;
    H_INFO[HID][VehHydro] = true;
	SaveHouseData(HID);
	return 1;
}
CMD:bs(playerid,params[])
{
	new target;
	if(sscanf(params,"u",target)) return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade : /Bustu (Playerid / Name)");
	if(Bustu[target])
	{
		Bustu[target] = false;
	}
	else
	{
		Bustu[target] = true;
	}
	return 1;
}
CMD:logpos(playerid,params[])
{
	new Float:P[3],string[256],strx[32];
	if(sscanf(params,"s[32]",strx)) return SendClientMessage(playerid,0x909090FF,"Tarighe Estefade : /LogPos (Matn)");
	GetPlayerPos(playerid, P[0], P[1], P[2]);
    new File:pos=fopen("positions.txt", io_append);
    format(string, 256, "%f,%f,%f   //%s\n\r", P[0], P[1], P[2] , strx);
    fwrite(pos, string);
    fclose(pos);
    return 1;
}