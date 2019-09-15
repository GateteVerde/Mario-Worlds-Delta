///pswitch_off();

/*
**  Usage:
**      pswitch_off();
**
**  Function:
**      Replaces items affected by the P-Switch to normal
*/

//Turn bricks into coins
with (obj_brick) {

    instance_create(x, y, obj_coinchange);
    instance_destroy();
}

//Turn coins into bricks
with (obj_coin) {

    //If the coin is affected by gravity, do not replace
    if (ready == 0) {
    
        instance_create(x, y, obj_brick);
        instance_destroy();
    }
}

//Turn fake coins into coins.
with (obj_coinchange) {

    instance_create(x,y,obj_coin);
    instance_destroy();    
}

//Make invisible coins visible
with (obj_coin_p) visible = false;


//Make P-Doors not usable
with (obj_door_p) {

    if (image_index == 0) {
        
        sprite_index = spr_door_p_outline;
        image_speed = 0.1;
    }
}
