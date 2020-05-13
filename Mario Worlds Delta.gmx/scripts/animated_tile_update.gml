///animated_tile_update()

/*
//  Usage:
//      animated_tile_update();
//
//  Purpose:
//      Animates the tiles
*/

with (Animated_Tile_Controller) {

    //Iterate through all animated tile sets
    for (var _i = 0; _i < ds_grid_height(animated_tiles); _i++) {
    
        //Inc the frame
        ds_grid_add(animated_tiles, Tiles.current_frame, _i, animated_tile_get_animation_speed(_i))
        
        //Check to see if current frame is a higher number than the last frame
        if (floor(animated_tile_get_current_frame(_i)) >= animated_tile_get_next_frame(_i)) { 
        
            //We need to update the tiles
            ds_grid_add(animated_tiles, Tiles.next_frame, _i, 1); 
            
            //Inc "Next Frame" for the previous if statement
            background_assign(animated_tile_get_background(_i), animated_tile_get_current_background(_i));
        }
    }
}


