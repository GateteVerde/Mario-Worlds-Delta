///scr_mario_crouch();

/*
//  Usage:
//      scr_mario_crouch();
//
//  Purpose:
//      Sets up the appropiate _crouch sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_crouch; break;
    
    //Default (Super)
    default: return spr_mario_super_crouch;
}
