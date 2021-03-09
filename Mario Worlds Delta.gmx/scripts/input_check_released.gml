///input_check_released(enum)

/*
**  Usage:
**      input_check(enum);
**
**  Given:
**      enum = The key enum
**
**  Purpose:
**      Check if the given input is released and return the result.
*/

//le epic input code
var _gamepad = 0;
var _keyboard = keyboard_check_released(global.key[argument0]);

//Going through all the connected gamepads
for (i=0; i<gamepad_get_device_count(); i++) {

    _gamepad += gamepad_button_check_released(i, global.button[argument0]);
}

//Return the result
return _keyboard+_gamepad;
