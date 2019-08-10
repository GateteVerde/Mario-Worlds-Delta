///sprite_get_powerup(sprite_index)

/*
**  Usage:
**      sprite_get_powerup(sprite_index)
**
**  Given:
**      variable    A sprite
**
**  Returns:
**      The powerup the sprite will give
*/

switch (argument[0]) {

    //Mushroom
    case (spr_mushroom): return cs_pow_super; break;
    
    //Fireflower
    case (spr_fireflower): return cs_pow_fire; break;
    
    //Feather
    case (spr_feather): return cs_pow_cape; break;
}
