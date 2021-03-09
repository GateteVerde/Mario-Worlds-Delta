///init_pixel();

/*
**  Usage:
**      init_pixel();
**
**  Returns:
**      Initializes the variables needed for the pixel shader to work properly
*/

//Telling the compiler to compile this script inline
gml_pragma("forceinline");

//Pixel Size
size = 0;

//Pixel uniform
pixel = shader_get_uniform(shd_pixel, "pixel");
