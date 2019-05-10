///scr_mario_kick();

/*
//  Usage:
//      scr_mario_kick();
//
//  Purpose:
//      Sets up the appropiate _kick sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_kick; break;
    
    //Default (Super)
    default: return spr_mario_super_kick;
}
