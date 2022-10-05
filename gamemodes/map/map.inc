
#include <YSI_Coding\y_hooks>

new gsGrove;
new gsBallas;
new gsPolice;
new rpggs;

hook OnGameModeInit()
{

	CreateObject(18885, 2178.4001, -1660.2717, 15.1358, -0.2999, 0.0999, 45.3000); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",0x909090FF,2179.524902,-1661.555419,15.21488,50,0,1);
	CreateObject(18885, 2478.9499, -1687.5627, 13.5893, 0.0000, 0.0000, 174.3999); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",0x909090FF,2479.119140,-1686.157592,13.907812,50,0,1);
	CreateObject(18885, 1508.6232, -1626.3209, 14.1153, 0.7999, -0.2999, 93.0000); //GunVendingMachine1
	Create3DTextLabel("{00FFC5}Gun Vending Machine\n{FFFF00}Kharid Aslahe",0x909090FF,1510.036132,-1626.318725,14.446875,50,0,1);

	gsGrove = CreateDynamicCP(2179.524902,-1661.555419, 14.9358,1.0,0,0,-1,40);
	gsBallas = CreateDynamicCP(2479.119140,-1686.157592, 13.2893,1.0,0,0,-1,40);
	gsPolice = CreateDynamicCP(1510.036132,-1626.318725, 14.0153,1.0,0,0,-1,40);
	CreateDynamicObject(3461, 2513.4892, -1669.5400, 14.0858, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3461, 2513.2617, -1677.0002, 14.1218, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3885, 2490.6003, -1666.0473, 13.1171, 0.0000, 0.0000, -16.0000);
	CreateDynamicObject(3884, 2491.0791, -1665.9000, 13.2143, 0.0000, 0.0000, 85.0000);
	CreateDynamicObject(3461, 2513.1562, -1663.6374, 14.0930, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3461, 2479.8461, -1688.8389, 16.0206, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3279, 2526.7990, -1675.0487, 18.4808, 0.0000, 0.0000, -270.0000);
	CreateDynamicObject(3279, 2506.1791, -1693.7534, 17.0355, 0.0000, 0.0000, -360.0000);
	CreateDynamicObject(5820, 2530.0166, -1669.3737, 15.2598, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(18649, 2521.9660, -1679.3138, 18.1017, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3932, 2459.7546, -1669.0402, 14.2539, 0.0000, 0.0000, -270.0000);
	CreateDynamicObject(2098, 2513.2058, -1690.7370, 19.2665, 0.0000, 0.0000, 50.0000);
	CreateDynamicObject(3932, 2452.2866, -1668.7037, 14.5943, 0.0000, 0.0000, -270.0000);
	CreateDynamicObject(19313, 2442.0678, -1666.3063, 15.8456, 0.0000, 0.0000, -180.0000);
	CreateDynamicObject(19313, 2439.2145, -1651.4354, 15.6895, 0.0000, 0.0000, -180.0000);
	CreateDynamicObject(19313, 2453.4970, -1651.4089, 15.6747, 0.0000, 0.0000, -180.0000);
	CreateDynamicObject(19313, 2427.8159, -1666.3232, 15.8322, 0.0000, 0.0000, -180.0000);
	CreateDynamicObject(3749, 2465.7734, -1659.5816, 17.8735, 0.0000, 0.0000, -90.0000);
	CreateDynamicObject(5821, 2471.9887, -1650.3209, 17.7812, 0.0000, 0.0000, -91.0000);
	CreateDynamicObject(9482, 2187.5354, -1639.2965, 20.9368, 0.0000, 0.0000, -13.0000);
	CreateDynamicObject(19313, 2210.6181, -1657.2061, 17.2590, 0.0000, 0.0000, -8.0000);
	CreateDynamicObject(19313, 2215.4106, -1665.0433, 16.7716, 0.0000, 0.0000, 72.0000);
	CreateDynamicObject(19313, 2211.0366, -1678.4716, 16.8490, 0.0000, 0.0000, 72.0000);
	CreateDynamicObject(19313, 2207.8151, -1692.2860, 16.7269, 0.0000, 0.0000, 82.0000);
	CreateDynamicObject(19905, 2198.7946, -1700.9833, 12.7836, 0.0000, 0.0000, 262.0000);
	CreateDynamicObject(16093, 2107.4262, -1775.5808, 15.8976, 0.0000, 0.0000, -7.0000);
	CreateDynamicObject(8614, 2102.6015, -1778.3603, 14.5448, 0.0000, 0.0000, 263.0000);
	CreateDynamicObject(3461, 2171.0969, -1681.1557, 15.5487, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3461, 2175.8916, -1675.6715, 15.5369, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(3279, 2173.5083, -1662.4758, 20.9495, 0.0000, 0.0000, 583.0000);
	CreateDynamicObject(3279, 2205.2622, -1653.7697, 14.4082, 0.0000, 0.0000, 258.0000);
	CreateDynamicObject(5816, 2161.9169, -1679.1090, 17.5481, 0.0000, 0.0000, -136.0000);
	CreateDynamicObject(3279, 2207.7250, -1635.6079, 14.5002, 0.0000, 0.0000, 258.0000);
	CreateDynamicObject(19462, 2115.7224, -1776.4340, 14.1403, 0.0000, 0.0000, -5.0000);
	CreateDynamicObject(19462, 2114.0290, -1776.4160, 15.8313, 0.0000, 90.0000, -5.0000);
	CreateDynamicObject(19462, 2111.5712, -1771.1375, 14.3553, 0.0000, 0.0000, -97.0000);
	CreateDynamicObject(19462, 2109.2048, -1770.8935, 14.3892, 0.0000, 0.0000, -97.0000);
	CreateDynamicObject(19462, 2104.0295, -1774.9737, 14.3800, 0.0000, 0.0000, -5.0000);
	CreateDynamicObject(3279, 2107.4643, -1792.9467, 17.0515, 0.0000, 0.0000, 0.0000);
	CreateDynamicObject(5820, 2117.2504, -1788.1745, 16.4666, 0.0000, 0.0000, 179.0000);
	CreateDynamicObject(18651, 2166.0087, -1671.3249, 16.8472, 0.0000, 0.0000, -43.0000);

	//Pickups
	rpggs = CreateDynamicPickup(359, 1, 2108.4052, -1774.7128, 17.0304, 0);

	//3D text labels
	Create3DTextLabel("{FFFF00}Gun Shop \n{FF0000}RPG Va MiniGun", 0xFFFFFFFF, 2108.3344, -1774.6976, 17.1272, 55.0000, 0, 0);
	Create3DTextLabel("{FFCCCC}Camp {11FF00}GroveStreet \n{0066FF}Faghat Afrad Gang", 0xFFFFFFFF, 2522.7343, -1679.2299, 15.4979, 30.0000, 0, 0);
	Create3DTextLabel("Camp Ballas", 0xFFFFFFFF, 2166.3720, -1671.6831, 15.0832, 55.0000, 0, 0);
	return 1;
}

hook OnPlayerEnterDynamicCP(playerid, checkpointid)
{
	if(checkpointid == gsGrove || gsPolice || gsBallas){
		gg(playerid);
	}
	return 1;
}


hook OnPlayerPickUpDynPickup(playerid, pickupid)
{
	if(pickupid == rpggs)
	{
		SendClientMessage(playerid,0x909090FF,"gs");
	}
	return 1;
}