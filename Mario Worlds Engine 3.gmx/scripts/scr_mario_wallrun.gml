///scr_mario_wallrun();

/*
//  Usage:
//      scr_mario_wallrun();
//
//  Purpose:
//      Sets up the appropiate _wallrun sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_wallrun; break;
    
    //Default (Super)
    default: return spr_mario_super_wallrun;
}
