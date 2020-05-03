///player_hold3();

/*
**  Name:
**      player_hold3();
**
**  Function:
**      Returns the appropiate hold2 sprite for the player
**
**  Notes:
**      This script is exclusive for Luigi
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): return spr_luigi_small_hold3; break;
    
    //Default
    default: return spr_luigi_big_hold3; break;
}
