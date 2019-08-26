///update_shockwave();

/*
**  Usage:
**      update_shockwave();
**
**  Returns:
**      Updates the resolution needed for the shockwave shader to work properly
*/

uni_resolution = shader_get_uniform(shd_shockwave,"resolution");
var_resolution_x = view_wview[0];
var_resolution_y = view_hview[0];
