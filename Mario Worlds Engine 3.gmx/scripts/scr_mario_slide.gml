///scr_mario_slide();

/*
//  Usage:
//      scr_mario_slide();
//
//  Purpose:
//      Sets up the appropiate _slide sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_slide; break;
    
    //Default (Super)
    default: return spr_mario_super_slide;
}
