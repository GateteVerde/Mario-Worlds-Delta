///FMODGMS_Play(sound, channel)

/*
**  Usage:
**      FMODGMS_Play(sound, channel)
**
**  Given:
**      sound       = Sound to play
**      channel     = Channel where the sound is played
**          0 = Main
**          1 = Starman
**          2 = PSwitch
**
**  Returns:
**      Plays the music in "argument[0]" on the given channel "argument[1]"
*/

//First up, open ini
ini_open("mwe3music.ini");

//Load the sound
_sound = FMODGMS_Snd_LoadSound(ini_read_string(argument[0], 'song', 0));

//Set up loop points
FMODGMS_Snd_Set_LoopMode(_sound, 1, -1);
FMODGMS_Snd_Set_LoopPoints(_sound, ini_read_string(argument[0], 'loopS', 0), ini_read_string(argument[0], 'loopE', 1));

//Play the music
FMODGMS_Snd_PlaySound(_sound, global._channel[argument[1]]);

//Close the ini file
ini_close();
