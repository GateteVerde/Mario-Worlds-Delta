///player_set_palette();

/*
**  Usage:
**      player_set_palette();
**
**  Purpose:
**      Sets up the palette to be used on the player
*/

//Create temporary variables
var pal, numb;

/*
//If the player is invincible
if (instance_exists(obj_invincibility)) {

    //Set the invincibility palette
    pal = spr_palette_invincibility;
    
    //Set the palette position
    numb = isflashing;
}

//Otherwise, if the player is not invincible
else {

    //Set the master palette
    pal = spr_palette_master;
    
    //Set the palette position
    numb = global.powerup;
}
*/

//Set the master palette
pal = spr_palette_master;
    
//Set the palette position
numb = global.powerup;

//Return pal_swap_set
return pal_swap_set(pal, numb);
