///scr_mario_swim();

/*
//  Usage:
//      scr_mario_swim();
//
//  Purpose:
//      Sets up the appropiate _swim sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_swim; break;
    
    //Default (Super)
    default: return spr_mario_super_swim;
}
