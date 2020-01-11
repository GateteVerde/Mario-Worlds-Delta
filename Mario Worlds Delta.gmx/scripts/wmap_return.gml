///wmap_return();

/*
**  Usage:
**      wmap_return();
**
**  Function:
**      Returns to the map or sends the player to the game over screen
*/

if (lives > 0)
    room_goto(rm_worldmap);
else
    room_goto(rm_gameover);
