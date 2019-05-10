///scr_mario_climbpunch();

/*
//  Usage:
//      scr_mario_climbpunch();
//
//  Purpose:
//      Sets up the appropiate _climbpunch sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_climbpunch; break;
    
    //Default (Super)
    default: return spr_mario_super_climbpunch;
}
