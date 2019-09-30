///player_dive();

/*
**  Name:
**      player_dive();
**
**  Function:
**      Returns the appropiate dive sprite for the player
*/

//Mario
if (global.player == 0)
    return spr_mario_cape_dive;
    
//Luigi
else if (global.player == 1)
    return spr_luigi_cape_dive;
    
//Toad
else if (global.player == 2)
    return spr_toad_cape_dive;
