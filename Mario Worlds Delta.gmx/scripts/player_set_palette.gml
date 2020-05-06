///player_set_palette(object);

/*
**  Usage:
**      player_set_palette(object);
**
**  Given:
**      object  = Object to hereby flashing variable
**
**  Purpose:
**      Sets up the palette to be used on the player
*/

//If the player is invincible
if (instance_exists(obj_invincibility)) {

    //Set palette based on controlled character
    switch (global.player) {
    
        //Mario
        case (0): pal = spr_palette_mario_invincibility; break;
        
        //Luigi
        case (1): pal = spr_palette_luigi_invincibility; break;
        
        //Toad
        case (2): pal = spr_palette_toad_invincibility; break;
    }
    
    //Set the palette position
    numb = argument[0].isflashing;
}

//Otherwise, if the player is not invincible
else {

    //Set palette based on controlled character
    switch (global.player) {
    
        //Mario
        case (0): pal = spr_palette_mario; break;
        
        //Luigi
        case (1): pal = spr_palette_luigi; break;
        
        //Toad
        case (2): pal = spr_palette_toad; break;
    }
    
    //Set the palette position
    numb = global.powerup;
}

//Return pal_swap_set
return pal_swap_set(pal, numb);
