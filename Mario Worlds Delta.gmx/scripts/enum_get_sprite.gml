///enum_get_sprite(variable)

/*
**  Usage:
**      enum_get_sprite(enum)
**
**  Given:
**      variable    A enum
**
**  Returns:
**      The sprite_index that represents that enum
*/

switch (argument[0]) {

    //Mushroom
    case (itemtype.mushroom): return spr_mushroom; break;
    
    //Fireflower
    case (itemtype.fireflower): return spr_fireflower; break;
    
    //Fireflower (Mushroom)
    case (itemtype.fireflower_plus): {
    
        //If the player is small, return a mushroom sprite
        if (global.powerup == cs_pow_small)
            return spr_mushroom;
            
        //Otherwise, return a fireflower sprite
        else
            return spr_fireflower;
    } break;
    
    //Feather
    case (itemtype.feather): return spr_feather; break;
    
    //Feather (Mushroom)
    case (itemtype.feather_plus): {
    
        //If the player is small, return a mushroom sprite
        if (global.powerup == cs_pow_small)
            return spr_mushroom;
            
        //Otherwise, return a fireflower sprite
        else
            return spr_feather;
    } break;
    
    //Star
    case (itemtype.star): return spr_star; break;
    
    //1UP
    case (itemtype.lifeup): return spr_1up; break;
    
    //Poison
    case (itemtype.poison): return spr_poison; break;
    
    //Fire Watermelon
    case (itemtype.watermelon_fire): return spr_watermelon_fire; break;
    
    //Bomb Watermelon
    case (itemtype.watermelon_bomb): return spr_watermelon_bomb; break;
    
    //P-Switch
    case (itemtype.pswitch): return spr_pswitch; break;
    
    //Gray P-Switch
    case (itemtype.gswitch): return spr_gswitch; break;
    
    //Trampoline
    case (itemtype.trampoline): return spr_trampoline; break;
    
    //Pow Block
    case (itemtype.powblock): return spr_powblock_blue; break;
    
    //Detonator
    case (itemtype.detonator): return spr_detonator; break;
    
    //Beanstalk
    case (itemtype.beanstalk): return spr_beanstalk; break;
    
    //Key
    case (itemtype.key): return spr_key; break;
    
    //Green Yoshi Egg
    case (itemtype.yoshi_g): return spr_egg; break;
    
    //Red Yoshi Egg
    case (itemtype.yoshi_r): return spr_egg_r; break;
    
    //Yellow Yoshi Egg
    case (itemtype.yoshi_y): return spr_egg_y; break;
    
    //Blue Yoshi Egg
    case (itemtype.yoshi_b): return spr_egg_b; break;
}
