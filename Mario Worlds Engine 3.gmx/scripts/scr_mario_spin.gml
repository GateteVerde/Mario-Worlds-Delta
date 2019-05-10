///scr_mario_spin();

/*
//  Usage:
//      scr_mario_spin();
//
//  Purpose:
//      Sets up the appropiate _spin sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_spin; break;
    
    //Default (Super)
    default: return spr_mario_super_spin;
}
