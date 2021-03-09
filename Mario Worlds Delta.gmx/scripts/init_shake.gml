///init_shake(time)

/*
**  Usage:
**      init_shake(time)
**
**  Given:
**      time        Time (in steps) to shake the screen
**
**  Returns:
**      Makes the screen shake for the time the sound plays given in argument0
*/

var len = audio_sound_length(argument[0]);

//Make the screen shake
obj_controller.shake = true;

//Set the time to shake the screen
obj_controller.alarm[8] = (room_speed * len);
obj_controller.alarm[9] = 1;
