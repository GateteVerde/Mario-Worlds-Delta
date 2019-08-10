///init_pixel();

/*
**  Usage:
**      init_pixel();
**
**  Returns:
**      Initializes the variables needed for the pixel shader to work properly
*/

//Pixel Size
size = 0;

//Pixel uniform
pixel = shader_get_uniform(shd_pixel, "pixel");
