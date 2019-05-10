///scr_mario_somersault();

/*
//  Usage:
//      scr_mario_somersault();
//
//  Purpose:
//      Sets up the appropiate _somersault sprite for Mario.
*/

//Switch between powerups
switch (global.powerup) {

    //Small
    case (cs_small): return spr_mario_small_somersault; break;
    
    //Default (Super)
    default: return spr_mario_super_somersault;
}
