///can_hold()

/*
**  Usage:
**      can_hold()
**
**  Returns:
**      Whether or not the player is able to hold an item.
*/

//Telling the compiler to compile this script inline
gml_pragma("forceinline")

//Return whether if the player is able to hold an item or not
return (input_check(input.action1))
&& (instance_exists(obj_playerparent))
&& (!instance_exists(obj_cape_fly))
&& (!global.mount)
&& (!obj_playerparent.holding)
&& (!obj_playerparent.sliding)
&& (obj_playerparent.control_enable)
