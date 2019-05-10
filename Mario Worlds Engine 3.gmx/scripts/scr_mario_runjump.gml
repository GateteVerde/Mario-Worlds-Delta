///scr_mario_runjump();

/*
//  Usage:
//      scr_mario_runjump();
//
//  Purpose:
//      Sets up the appropiate _runjump sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_runjump; break;
    
    //Default (Super)
    default: return spr_mario_super_runjump;
}
