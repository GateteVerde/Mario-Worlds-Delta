///animated_tile_add(background,speed,frame1,frame2,frame3,frame4,etc...);

/*
//  Usage:
//      animated_tile_add(background,speed,frame1,frame2,frame3,frame4,etc...);
//
//  Purpose:
//      Sets the backgrounds to be used as the animated tiles
*/

//Add a tile set to the animated tile system.
with (Animated_Tile_Controller) {
  
    var _non_frame_arg_count=2;
    var _bg=argument[0];
    var _spd=argument[1];
    var _frame_count=argument_count-_non_frame_arg_count;
    
    ds_grid_resize(animated_tiles,
                   max(ds_grid_width(animated_tiles),Tiles.column_count+_frame_count-1),
                   ds_grid_height(animated_tiles)+1);
                   
    var _row=ds_grid_height(animated_tiles)-1;
    animated_tiles[# Tiles.background,_row]    = _bg; //Base BG
    animated_tiles[# Tiles.is_playing,_row]    = true; //Set whether it is playing or not
    animated_tiles[# Tiles.anim_speed,_row]    = _spd; //Set the animation speed.
    animated_tiles[# Tiles.current_frame,_row] = 0; //Set the current animation frame.
    animated_tiles[# Tiles.next_frame,_row]    = 1; //Set the "next animation frame.
    animated_tiles[# Tiles.frame_count,_row]   = _frame_count; //How many frames do we have?
    
    //Set Up Frames
    for(var _i=0; _i<_frame_count; _i++) {
    
        animated_tiles[# Tiles.column_count-1+_i,_row] = argument[_non_frame_arg_count+_i];
    }
}

