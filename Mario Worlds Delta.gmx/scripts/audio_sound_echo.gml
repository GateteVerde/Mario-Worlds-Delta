///audio_sound_echo(sound_id, loop)

//Temporary variables
var soundname = audio_get_name(argument[0]);
var soundfull = soundname + string('_echo');
var soundfile = asset_get_index(soundfull);
var loop = argument[1];
var gain = audio_sound_get_gain(argument[0])/2;

//Play 'soundfile'
audio_play_sound(soundfile, 1.5, loop);
audio_sound_gain(soundfile, gain, 0);
