///animated_tile_init()

/*
//  Usage:
//      animated_tile_init();
//
//  Purpose:
//      Initialize the tile animation system on the calling instance
*/

globalvar Animated_Tile_Controller;
Animated_Tile_Controller = id;

enum Tiles{background,
           is_playing,
           anim_speed,
           current_frame,
           next_frame,
           frame_count,
           first_frame,           
           column_count}

animated_tiles = ds_grid_create(Tiles.column_count,0);

