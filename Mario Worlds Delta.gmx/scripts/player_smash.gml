///player_smash();

/*
**  Name:
**      player_smash();
**
**  Function:
**      Returns the appropiate smash sprite for the player
*/

//Mario
if (global.player == 0)
    return spr_mario_cape_smash;
    
//Luigi
else if (global.player == 1)
    return spr_luigi_cape_smash;
    
//Toad
else if (global.player == 2)
    return spr_toad_cape_smash;
