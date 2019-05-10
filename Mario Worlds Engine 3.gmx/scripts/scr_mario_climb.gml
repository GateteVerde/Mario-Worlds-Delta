///scr_mario_climb();

/*
//  Usage:
//      scr_mario_climb();
//
//  Purpose:
//      Sets up the appropiate _climb sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_climb; break;
    
    //Default (Super)
    default: return spr_mario_super_climb;
}
