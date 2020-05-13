///animated_tile_disable_all()

/*
//  Usage:
//      animated_tile_disable_all();
//
//  Purpose:
//      Disables all tile animations
*/

with (Animated_Tile_Controller) {

    for (var _i=0; _i<ds_grid_height(animated_tiles); _i++)
        animated_tiles[# Tiles.is_playing,_i]=false;
}

