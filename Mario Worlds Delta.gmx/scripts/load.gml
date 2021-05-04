///load(file)

/*
**  Usage:
**      load(file)
**
**  Given:
**      file    The location of the load file.
*/

// Open the file
var file = file_text_open_read(argument[0]);

// Read the state of the world map data structure
ds_map_read(global.worldmap,file_text_read_string(file));
file_text_readln(file);

// Read the state of the beaten world map data structure
ds_map_read(global.worldmap_beaten,file_text_read_string(file));
file_text_readln(file);

// Change current state of Switch Palaces to 
global.palaceswitch_y = ds_map_find_value(global.worldmap,"switch_y");
global.palaceswitch_g = ds_map_find_value(global.worldmap,"switch_g");
global.palaceswitch_r = ds_map_find_value(global.worldmap,"switch_r");
global.palaceswitch_b = ds_map_find_value(global.worldmap,"switch_b");

// Load player state if specified to do so
if (global.load_state) {

    lives = ds_map_find_value(global.worldmap,"lives");
    score = ds_map_find_value(global.worldmap,"score");
    global.coins = ds_map_find_value(global.worldmap,"coins");
    global.reserveitem = ds_map_find_value(global.worldmap,"reserve");
    global.powerup = ds_map_find_value(global.worldmap,"powerup");
    global.mount = ds_map_find_value(global.worldmap,"mount");
    global.mountcolour = ds_map_find_value(global.worldmap,"mountcolour");
    global.bonus = ds_map_find_value(global.worldmap,"bonus");

}

// Yoshi rescued
global.yoshi_rescued = ds_map_find_value(global.worldmap,"yoshirescued");

// Close the file
file_text_close(file);

var inifile = -1;

switch (argument[0]) {

    case ("MWDSave1.sav"):
    
        inifile = "MWDInfo1.ini";
        break;
        
    case ("MWDSave2.sav"):
    
        inifile = "MWDInfo2.ini";
        break;
        
    case ("MWDSave3.sav"):
    
        inifile = "MWDInfo3.ini";
        break;

}

if (inifile != -1) {

    ini_open(inifile);
    
    global.cleared_levels = ini_read_real("Exits", "Completion", 0);
    
    ini_close();

}
