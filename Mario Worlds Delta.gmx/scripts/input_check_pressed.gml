///input_check_pressed(enum)

/*
**  Usage:
**      input_check_pressed(enum);
**
**  Given:
**      enum = The key enum
**
**  Purpose:
**      Check if the given input is being pressed and return the result.
*/

//le epic input code
var _gamepad = 0;
var _keyboard = keyboard_check_pressed(global.key[argument0]);

//Going through all the connected gamepads
for (i=0; i<gamepad_get_device_count(); i++) {

    _gamepad += gamepad_button_check_pressed(i, global.button[argument0]);
}

//Return the result
return _keyboard+_gamepad;
