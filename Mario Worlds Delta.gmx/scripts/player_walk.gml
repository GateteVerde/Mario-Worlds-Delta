///player_walk();

/*
**  Name:
**      player_walk();
**
**  Function:
**      Returns the appropiate walk sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small
    case (cs_pow_small): {
    
        //Mario
        if (global.player == 0)
            return spr_mario_small_walk;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_small_walk;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_small_walk;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_small_walk;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_walk;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_walk;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_walk;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_walk;
    } break;
}
