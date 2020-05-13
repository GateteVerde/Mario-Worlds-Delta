///animated_tile_get_background(index)

/*
//  Usage:
//      animated_tile_get_background(index);
//
//  Purpose:
//      Returns the correct background for the current frame of the animation.
*/

var _cf,_fc;
_cf = animated_tile_get_current_frame(argument[0]); //Current Frame
_fc = animated_tile_get_frame_count(argument[0]); //Frame Count

if (_cf >= _fc)
    _cf = floor(_cf-(_fc*(_cf div _fc)));
else
    _cf=floor(_cf);
  
return (animated_tiles[#Tiles.column_count+_cf-1,argument[0]]);

