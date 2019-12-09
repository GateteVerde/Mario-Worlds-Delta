///variable_global_reset();

/*
**  Usage:
**      variable_global_reset();
**
**  Function:
**      Resets the given global variables to their default values
*/

//Reset checkpoint
global.cpstart = 0;

//Restart time
global.time = 0;

//Restart carried items
global.carrieditem = noone;
global.carriedsprite = noone;

//Restart P-Switch
global.pswitch = 0;

//Restart Starman
global.starman = 0;

//Restart ON/OFF Block
global.onoffblock = false;

//Clear the records of the opened doors
global.doors = ds_map_create();

//Clear the records of the collected dragon coins
global.dcoins = ds_map_create();

//Reset warps
global.postchange = -1;
