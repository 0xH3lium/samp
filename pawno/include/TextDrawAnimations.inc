

    // Clavador Mar-2012

    #if !defined MAX_BUFFER
                    #define MAX_BUFFER 24
            #endif

    #if !defined PLY_MX
                    #define PLY_MX MAX_PLAYERS
            #endif

    #define Init_Effects() new tid

    #define TextDraw_FadeIn(%1,%2,%3,%4,%5,%6,%7)                           tid = Gettimer(%1);             \
                                                                                                                            T_Stuff[%1][tid][minimum] = %5; \
                                                                                                                            T_Stuff[%1][tid][maximum] = %6; \
                                                                                                                            T_Stuff[%1][tid][t_id] = SetTimerEx("TextDrawFadeIn",%3,true,"ddddd",%1,%2,%4,tid,%7)

    #define TextDraw_Grow(%1,%2,%3,%4,%5,%6,%7,%8)                          tid = Gettimer(%1);             \
                                                                                                                            T_Stuff[%1][tid][minimum] = %5; \
                                                                                                                            T_Stuff[%1][tid][maximum] = %6; \
                                                                                                                            T_Stuff[%1][tid][t_id] = SetTimerEx("TextDrawGrow",1,true,"ddddffd",%1,%2,%3,%4,%7,%8,tid)

    #define TextDraw_Pulsate(%1,%2,%3,%4,%5,%6)                             tid = Gettimer(%1);             \
                                                                                                                            T_Stuff[%1][tid][minimum] = %5; \
                                                                                                                            T_Stuff[%1][tid][maximum] = %6; \
                                                                                                                            T_Stuff[%1][tid][t_id] = SetTimerEx("TextDrawPulsate",%4,true,"ddddd",%1,%2,%3,tid)


    #define TextDraw_Hide(%1,%2,%3,%4)                                                      T_Stuff[%1][%2][minimum] = %3;  \
                                                                                                                            T_Stuff[%1][%2][maximum] = %4;  \
                                                                                                                            HideDynamicTextDraws( %1, %2 )


    #define min_buffer T_Stuff[playerid][timer][minimum]
    #define max_buffer T_Stuff[playerid][timer][maximum]

    enum Stuff
    {
            minimum,
            maximum,
            t_id,
            count,
            bool:show,
            Float:txt_x,
            Float:txt_y
    }

    new T_Stuff[PLY_MX][MAX_BUFFER][Stuff];
    new Text:T_Buffer[MAX_BUFFER];

    // THIS IS CALLED WHEN ANIMATION FINISHES
    forward OnAnimFinish( playerid, index, timer );

    forward HideDynamicTextDraws( playerid, timer ); // HIDES FROM MIN TO MAX
    forward TextDrawFadeIn( playerid, index, duration, timer, sound ); // SHOWS FROM MIN TO MAX
    forward TextDrawGrow( playerid, index, anim_speed, duration, Float:max_x, Float:max_y, timer ); // GROWS FROM 0 TO X
    forward TextDrawPulsate( playerid, index, repetitions, timer ); // SHOWS AND HIDES FROM MIN TO MAX WITH X REPETITIONS

    // FUNCTIONS
    public TextDrawFadeIn( playerid, index, duration, timer, sound )
    {
            if( min_buffer <= max_buffer )
            {
                    TextDrawShowForPlayer( playerid, T_Buffer[min_buffer] );
                    min_buffer++;

                    if( sound != 0 )
                            PlayerPlaySound( playerid, sound, 0.0, 0.0, 0.0 );
            }
            else
            {
                    StopTimer( playerid, timer );
                    SetTimerEx("OnAnimFinish",duration,false,"ddd",playerid,index,timer);
            }

            return 1;
    }

    public TextDrawGrow( playerid, index, anim_speed, duration, Float:max_x, Float:max_y, timer )
    {
            new i = min_buffer;

            if( T_Stuff[playerid][timer][txt_x] < max_x ) T_Stuff[playerid][timer][txt_x] += max_x / anim_speed;
            if( T_Stuff[playerid][timer][txt_y] < max_y ) T_Stuff[playerid][timer][txt_y] += max_y / anim_speed;

            while( i <= max_buffer )
            {
                    TextDrawLetterSize( T_Buffer[i], T_Stuff[playerid][timer][txt_x], T_Stuff[playerid][timer][txt_y] );
                    TextDrawShowForPlayer( playerid, T_Buffer[i] );
                    i++;
            }

            if( T_Stuff[playerid][timer][txt_x] >= max_x && T_Stuff[playerid][timer][txt_y] >= max_y )
            {
                    StopTimer( playerid, timer );
                    T_Stuff[playerid][timer][txt_x] = T_Stuff[playerid][timer][txt_y] = 0.0;
                    SetTimerEx("OnAnimFinish",duration,false,"ddd",playerid,index,timer);
            }

            return 1;
    }

    public TextDrawPulsate( playerid, index, repetitions, timer )
    {
            new i = min_buffer;

            if( !T_Stuff[playerid][timer][show] )
            {
                    if( i == max_buffer )
                    {
                            TextDrawShowForPlayer( playerid, T_Buffer[i] );
                    }
                    else
                    {
                            while( i < max_buffer )
                            {
                                    TextDrawShowForPlayer( playerid, T_Buffer[i] );
                                    i++;
                            }
                    }

                    T_Stuff[playerid][timer][show] = true;
            }
            else
            {
                    if( i == max_buffer )
                    {
                            TextDrawHideForPlayer( playerid, T_Buffer[i] );
                    }
                    else
                    {
                            while( i < max_buffer )
                            {
                                    TextDrawHideForPlayer( playerid, T_Buffer[i] );
                                    i++;
                            }
                    }

                    T_Stuff[playerid][timer][show] = false;
            }

            if( T_Stuff[playerid][timer][count] > repetitions )
            {
                    T_Stuff[playerid][timer][count] = 0;
                    StopTimer( playerid, timer );
                    OnAnimFinish( playerid, index, timer );
            }
            else T_Stuff[playerid][timer][count]++;

            return 1;
    }

    public HideDynamicTextDraws( playerid, timer )
    {
            if( T_Stuff[playerid][timer][maximum] < 0 ) T_Stuff[playerid][timer][maximum] = MAX_BUFFER;

            while( T_Stuff[playerid][timer][minimum] < T_Stuff[playerid][timer][maximum] )
            {
                    TextDrawHideForPlayer( playerid, T_Buffer[T_Stuff[playerid][timer][minimum]] );
                    T_Stuff[playerid][timer][minimum]++;
            }

            return 1;
    }

    stock StopTimer( playerid, timer )
    {
            KillTimer( T_Stuff[playerid][timer][t_id] );
            T_Stuff[playerid][timer][t_id] = 0;

            return 1;
    }

    stock Gettimer( playerid )
    {
            for( new i; i<sizeof(T_Stuff[]); i++)
            {
                    if( T_Stuff[playerid][i][t_id] == 0 )
                    {
                            return i;
                    }
            }

            return 0;
    }


