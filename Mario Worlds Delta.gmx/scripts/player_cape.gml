///player_cape();

/*
**  Name:
**      player_cape();
**
**  Function:
**      Returns the appropiate cape sprite for the player
*/

//Mario
if (global.player == 0)
    return spr_mario_cape;
    
//Luigi
else if (global.player == 1)
    return spr_luigi_cape;
    
//Toad
else if (global.player == 2)
    return spr_toad_cape;
    
//Peach
else if (global.player == 3)
    return spr_peach_cape;
