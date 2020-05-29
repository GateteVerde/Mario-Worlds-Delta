///player_shoot();

/*
**  Name:
**      player_shoot();
**
**  Function:
**      Returns the appropiate shoot sprite for the player
*/

//Check powerup
switch (global.powerup) {

    //Small, Super, Cape
    case (cs_pow_small): 
    case (cs_pow_super):
    case (cs_pow_cape): {
    
        return -1;
    } break;
    
    //Default
    default: {
    
        //Mario
        if (global.player == 0)
            return spr_mario_big_shoot;
            
        //Luigi
        else if (global.player == 1)
            return spr_luigi_big_shoot;
            
        //Toad
        else if (global.player == 2)
            return spr_toad_big_shoot;
            
        //Peach
        else if (global.player == 3)
            return spr_peach_big_shoot;
    } break;
}
