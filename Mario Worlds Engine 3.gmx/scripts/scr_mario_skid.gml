///scr_mario_skid();

/*
//  Usage:
//      scr_mario_skid();
//
//  Purpose:
//      Sets up the appropiate _skid sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_skid; break;
    
    //Default (Super)
    default: return spr_mario_super_skid;
}
