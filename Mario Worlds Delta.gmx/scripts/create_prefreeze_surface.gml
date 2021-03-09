///create_prefreeze_surface();

//Creating the prefreeze surface.
var w = surface_get_width(application_surface);
var h = surface_get_height(application_surface);
global.prefreeze = surface_create(w, h);
    
//Copy the contents over from the application surface.
surface_copy(global.prefreeze, 0, 0, application_surface);
