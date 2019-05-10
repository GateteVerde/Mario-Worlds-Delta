///scr_mario_clear();

/*
//  Usage:
//      scr_mario_clear();
//
//  Purpose:
//      Sets up the appropiate _clear sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_clear; break;
    
    //Default (Super)
    default: return spr_mario_super_clear;
}
