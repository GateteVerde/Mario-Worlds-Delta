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
    
    //Trampoline
    case (itemtype.trampoline): return spr_trampoline; break;
}
