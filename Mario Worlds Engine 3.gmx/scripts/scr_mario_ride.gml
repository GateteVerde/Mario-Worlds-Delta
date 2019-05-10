///scr_mario_ride();

/*
//  Usage:
//      scr_mario_ride();
//
//  Purpose:
//      Sets up the appropiate _ride sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_ride; break;
    
    //Default (Super)
    default: return spr_mario_super_ride;
}
