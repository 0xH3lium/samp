
#include <YSI_Coding\y_hooks>

forward PayMenu(playerid);
public PayMenu(playerid)
{
	inline payhim(response,listitem,string:inputtext[])
	{
		#pragma unused listitem
		if(!response) return 1;
		GivePool(GetPVarInt(playerid,"SPlayer"),strval(inputtext));
	}
	Dialog_ShowCallback(playerid,using inline payhim,DIALOG_STYLE_INPUT,"{FFFF00}Server - Pay","{FF0077}Mablagh Morede Nazar Ra Vared Konid:","Entekhab","Cancel");
	return 1;
}
UserMenu(playerid,string:funx[])
{
	new str[256],temp[32], x = 0,UserMenuArr[10];
	for(new i = 0; i < MAX_PLAYERS; i++ )
	{
		if(!IsPlayerConnected(i)) continue;
		format(temp,32,"%s( %d )\n",GetName(i),i);
		strcat(str,temp);
		UserMenuArr[x] = i;
		x++;
	}
	inline rest(response,listitem,string:inputtext[])
	{
		#pragma unused inputtext
		if(!response) SetPVarInt(playerid,"SPlayer",-1);
		SetPVarInt(playerid,"SPlayer",UserMenuArr[listitem]);
		CallLocalFunction(funx,"i",playerid);

	}
	Dialog_ShowCallback(playerid,using inline rest,DIALOG_STYLE_LIST,"{FFFF00}List Player Haye Online",str,"Entekhab","Cancel");
}
InterMenu(playerid)
{
	inline MainMenu(response,listitem,string:inputtext[])
	{
		#pragma unused inputtext
		if(!response) return 1;
		switch(listitem)
		{
			case 0:
			{
				Invent(playerid);
			}

			case 1:
			{
				Attacks(playerid);
			}
			case 2:
			{
				SetPVarInt(playerid,"SPlayer",-1);
				UserMenu(playerid,"PayMenu");
				
			}
		}
		
	}
	Dialog_ShowCallback(playerid,using inline MainMenu,DIALOG_STYLE_LIST,"{FFFF00}Main Menu","[01]  Inventory\n[02]  Attack Zone\n[03]  Respawn Car \n[04]  Pay Money \n[05]  NRG-500","Entekhab","Cancel");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_CTRL_BACK)
    {	

    	InterMenu(playerid);
        
    }
    return 1;
}