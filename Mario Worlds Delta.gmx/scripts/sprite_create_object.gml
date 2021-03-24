///sprite_create_object(x,y,sprite)

/*
**  Usage:
**      sprite_create_object(x,y,sprite)
**
**  Given:
**      x           X Coordinate
**      y           Y Coordinate
**      sprite      The sprite that represents what you want
**
**  Purpose:
**      Creates an object that the sprite represents at x,y.
*/

switch (argument[2]) {

    //Mushroom
    case (spr_mushroom): return instance_create(argument[0], argument[1], obj_mushroom);
    
    //Fireflower
    case (spr_fireflower): return instance_create(argument[0], argument[1], obj_fireflower);
    
    //Iceflower
    case (spr_iceflower): return instance_create(argument[0], argument[1], obj_iceflower);
    
    //Star
    case (spr_star): return instance_create(argument[0], argument[1], obj_star);
    
    //1UP
    case (spr_1up): return instance_create(argument[0], argument[1], obj_1up);
    
    //Poison
    case (spr_poison): return instance_create(argument[0], argument[1], obj_poison);
    
    //Fire Watermelon
    case (spr_watermelon_fire): return instance_create(argument[0], argument[1], obj_watermelon_fire);
    
    //Ice Watermelon
    case (spr_watermelon_ice): return instance_create(argument[0], argument[1], obj_watermelon_ice);
    
    //Bomb Watermelon
    case (spr_watermelon_bomb): return instance_create(argument[0], argument[1], obj_watermelon_bomb);
    
    //P-Switch
    case (spr_pswitch): return instance_create(argument[0], argument[1], obj_pswitch);
    
    //Gray P-Switch
    case (spr_gswitch): return instance_create(argument[0], argument[1], obj_gswitch);
        
    //Trampoline
    case (spr_trampoline): return instance_create(argument[0], argument[1], obj_trampoline);
    
    //Pow Block
    case (spr_powblock_blue): return instance_create(argument[0], argument[1], obj_powblock_blue);
    
    //Detonator
    case (spr_detonator): return instance_create(argument[0], argument[1], obj_detonator);
    
    //Key
    case (spr_key): return instance_create(argument[0], argument[1], obj_key);
    
    //Green Yoshi Egg
    case (spr_egg): return instance_create(argument[0], argument[1], obj_egg);
    
    //Red Yoshi Egg
    case (spr_egg_r): {
    
        var i;
        i = instance_create(argument[0], argument[1], obj_egg);
            i.sprite_index = spr_egg_r;
    }
    return i;
    
    //Yellow Yoshi Egg
    case (spr_egg_y): {
    
        var i;
        i = instance_create(argument[0], argument[1], obj_egg);
            i.sprite_index = spr_egg_y;
    }
    return i;
    
    //Blue Yoshi Egg
    case (spr_egg_b): {
    
        var i;
        i = instance_create(argument[0], argument[1], obj_egg);
            i.sprite_index = spr_egg_b;
    }
    return i;
}
