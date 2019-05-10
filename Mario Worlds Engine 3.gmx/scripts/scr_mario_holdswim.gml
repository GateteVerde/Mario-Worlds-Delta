///scr_mario_holdswim();

/*
//  Usage:
//      scr_mario_holdswim();
//
//  Purpose:
//      Sets up the appropiate _holdswim sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_holdswim; break;
    
    //Default (Super)
    default: return spr_mario_super_holdswim;
}
