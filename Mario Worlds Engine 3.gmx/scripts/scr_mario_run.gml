///scr_mario_run();

/*
//  Usage:
//      scr_mario_run();
//
//  Purpose:
//      Sets up the appropiate _run sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_run; break;
    
    //Default (Super)
    default: return spr_mario_super_run;
}
