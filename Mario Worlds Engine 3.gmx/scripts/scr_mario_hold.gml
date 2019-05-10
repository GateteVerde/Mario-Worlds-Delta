///scr_mario_hold();

/*
//  Usage:
//      scr_mario_hold();
//
//  Purpose:
//      Sets up the appropiate _hold sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_hold; break;
    
    //Default (Super)
    default: return spr_mario_super_hold;
}
