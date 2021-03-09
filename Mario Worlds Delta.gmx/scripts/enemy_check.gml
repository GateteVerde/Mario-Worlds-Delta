///enemy_check();

/*
**  Name:
**      enemy_check();
**
**  Purpose:
**      Allows the player to bounce on the enemy even if he is doing a spin jump
*/

//Telling the compiler to compile this script inline
gml_pragma("forceinline");

//Return true if the enemy is a rex
return object_index == obj_rex;

