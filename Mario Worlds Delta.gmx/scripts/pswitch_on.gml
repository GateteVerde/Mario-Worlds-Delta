///pswitch_on();

/*
**  Usage:
**      pswitch_on();
**
**  Function:
**      Replaces items affected by the P-Switch
*/

//Turn blocks into fake coins
with (obj_emptyblock) {

    instance_create(x, y, obj_coinchange);
    instance_destroy();
}

//Turn coins into empty blocks
with (obj_coin) {

    instance_create(x, y, obj_emptyblock);
    instance_destroy();
}

//Turn fake coins into coins.
with (obj_coinchange) {

    instance_create(x, y, obj_coin);
    instance_destroy();    
}

//Make invisible coins visible
with (obj_coin_p) visible = true;

//Make P-Doors usable
with (obj_door_p) {

    sprite_index = spr_door_p;
    image_speed = 0;
    image_index = 0;
}
