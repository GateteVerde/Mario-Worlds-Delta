///input_check_pressed(enum)

//le epic input code
var _gamepad = 0;
var _keyboard = keyboard_check_pressed(global.key[argument0]);

//Going through all the connected gamepads
for (i=0; i<gamepad_get_device_count(); i++) {
    _gamepad += gamepad_button_check_pressed(i, global.button[argument0]);
}

return _keyboard+_gamepad
