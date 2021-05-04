///save(file)

/*
**  Usage:
**      save(file)
**
**  Given:
**      file    The location of the save file.
*/

//Open the file
var file = file_text_open_write(argument[0]);

//Save Switch Palace variables to the World Map structure
ds_map_replace(global.worldmap,"switch_y",global.palaceswitch_y);
ds_map_replace(global.worldmap,"switch_g",global.palaceswitch_g);
ds_map_replace(global.worldmap,"switch_r",global.palaceswitch_r);
ds_map_replace(global.worldmap,"switch_b",global.palaceswitch_b);

//Save player state to World Map structure
ds_map_replace(global.worldmap,"lives",lives);
ds_map_replace(global.worldmap,"score",score);
ds_map_replace(global.worldmap,"coins",global.coins);
ds_map_replace(global.worldmap,"reserve",global.reserveitem);
ds_map_replace(global.worldmap,"powerup",global.powerup);
ds_map_replace(global.worldmap,"mount",global.mount);
ds_map_replace(global.worldmap,"mountcolour",global.mountcolour);
ds_map_replace(global.worldmap,"bonus",global.bonus);

//Yoshi rescued
ds_map_replace(global.worldmap,"yoshirescued",global.yoshi_rescued);

//Turn the world map data structure into a string and write it
file_text_write_string(file,ds_map_write(global.worldmap));
file_text_writeln(file);

//Turn the beaten world map data structure into a string and write it
file_text_write_string(file,ds_map_write(global.worldmap_beaten));
file_text_writeln(file);

//Close the file
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
    
    ini_write_real("Exits", "Completion", global.cleared_levels);
    
    ini_close();

}
