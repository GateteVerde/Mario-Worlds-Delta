///scr_mario_jump();

/*
//  Usage:
//      scr_mario_jump();
//
//  Purpose:
//      Sets up the appropiate _jump sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_jump; break;
    
    //Default (Super)
    default: return spr_mario_super_jump;
}
