///scr_mario_walk();

/*
//  Usage:
//      scr_mario_walk();
//
//  Purpose:
//      Sets up the appropiate _walk sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_walk; break;
    
    //Default (Super)
    default: return spr_mario_super_walk;
}
