///FMODGMS_Stop(channel)

/*
**  Usage:
**      FMODGMS_Stop(channel)
**
**  Given:
**      channel     = Channel where the sound is played
**          0 = Main
**          1 = Starman
**          2 = PSwitch
**
**  Returns:
**      Stop the music on the given channel "argument[0]"
*/

//Stop the channel and remove it.
FMODGMS_Chan_StopChannel(global._channel[argument[0]])
FMODGMS_Chan_RemoveChannel(global._channel[argument[0]])

//Reset player
global._isplaying[argument[0]] = false;

//Add the channel back
global._channel[argument[0]] = FMODGMS_Chan_CreateChannel();
