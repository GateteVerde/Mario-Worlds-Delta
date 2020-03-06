///begin_pixel();

/*
**  Usage:
**      begin_pixel();
**
**  Given
**      argument: Time in steps to stop the effect
**
**  Returns:
**      Initializes the variables needed for the pixel shader to work properly
*/

//With the persistence object
with (obj_controller) {

    pixelate = true;
    alarm[10] = argument[0];
}
