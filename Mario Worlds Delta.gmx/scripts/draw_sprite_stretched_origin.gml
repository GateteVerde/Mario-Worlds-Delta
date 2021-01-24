/// draw_sprite_stretched_origin(sprite,subimg,ox,oy,scalex,scaley)
//
//  Draws a sprite scaled along an arbitrary axis.
//
//      sprite      sprite, real
//      subimg      subimage, real
//      x,y         position, real
//      scale       scaling factor, real
//      dir         direction to stretch, real
//
/// GMLscripts.com/license
{
    d3d_transform_stack_push();
    d3d_transform_add_translation(argument2,argument3,0);
    d3d_transform_add_scaling(argument4,argument5,1);
    d3d_transform_add_translation(round(x)-argument2,round(y)-argument3,0);
    draw_sprite(argument0,argument1,0,0);
    d3d_transform_stack_pop();
    return 0;
}
