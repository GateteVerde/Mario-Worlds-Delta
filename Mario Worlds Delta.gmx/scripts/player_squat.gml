///player_jump();

/*
**  Name:
**      player_jump();
**
**  Function:
**      Returns the appropiate jump sprite for the player
**
**  Note:
**      This script is exclusive for Toad
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): return spr_toad_small_squat;

    //Default
    default: return spr_toad_big_squat;
}
