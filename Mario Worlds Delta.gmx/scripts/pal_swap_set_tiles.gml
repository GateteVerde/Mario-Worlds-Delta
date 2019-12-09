///pal_swap_set_tiles(pal_sprite, pal_index, str_layer, end_layer);

/*
**  Usage:
**      pal_swap_set_tiles(pal_sprite, pal_index, str_layer, end_layer);
**
**  Arguments:
**      pal_sprite: Palette sprite
**      pal_index: Palette index
**      str_layer: Palette layer start
**      end_layer: Palette layer end
**
**  Function:
**      Set the palette to be used on the object.
*/

//Properties
var _pal_sprite = argument[0];
var _pal_index = argument[1];
var _low = argument[2];
var _high = argument[3];

//Check the start object
var _start_exists = false;

//If the start object does not exist
if (!_start_exists) {

    //Create it
    with (instance_create(0, 0, obj_tile_swapper_start)) {
    
        active = true;
        depth = _low;
        pal_sprite = _pal_sprite;
        pal_index = _pal_index;
    }
}

//Otherwise, manage tile swap
else {

    with (obj_tile_swapper_start) {
    
        if (depth == _low) {   
        
            _start_exists = true;
            active = true;
            pal_sprite = _pal_sprite;
            pal_index = _pal_index;
        }
    }    
}

//Check the end object
var _end_exists = false;

//If the end object does not exist
if (!_end_exists) {

    //Create it
    with (instance_create(0, 0, obj_tile_swapper_end)) {

        active = true;
        depth = _high;
    }
}

//Otherwise, manage tile swap
else {
    
    with (obj_tile_swapper_end) {
    
        if (depth == _high) {  
    
            _end_exists = true;
            active = true;
        }
    }
}


