///audio_loop_sound(sound,sample_begin,sample_end,sample_rate,priority)

/*
//  Usage:
//      audio_loop_sound(sound,sample_begin,sample_end,sample_rate,priority);
//
//  Given:
//      sound:          sound to play
//      sample_begin:   loop start point (Samples)
//      sample_end:     loop end point (Samples)
//      sample_rate:    sample rate (Recommended value: 44100)
//      priority:       Always 1
//
//  Purpose:
//      Plays the given sound with a loop
//
//  Notes:
//      This is only compatible with .ogg files, make sure the .ogg files you set up have at least 1 second of silence at the end.
*/

var _als = instance_create(0, 0, obj_audio_loop_sound);

with (_als) {

    _audio = audio_play_sound(argument[0], argument[4], 1);
    _loop_begin = argument[1] / argument[3];
    _loop_end = argument[2] / argument[3];
    _transition_delay = 0.00; //<[Custom]
    _debug = 1;
}

return _als._audio;
