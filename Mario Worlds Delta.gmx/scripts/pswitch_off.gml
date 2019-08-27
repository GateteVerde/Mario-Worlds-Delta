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

    instance_create(x, y, obj_brick);
    instance_destroy();
}

//Turn fake coins into coins.
with (obj_coinchange) {

    instance_create(x,y,obj_coin);
    instance_destroy();    
}

//Make invisible coins visible
with (obj_coin_p) visible = false;