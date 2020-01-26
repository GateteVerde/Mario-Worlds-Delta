///allow_move();

/*
**  Usage:
**      allow_move();
**
**  Purpose:
**      Allows the player to move if he is crouched down or flying
*/

//If the player is crouched down
if (crouch == true) {

    //If the player is jumping
    if (state == statetype.jump)
        return true;
    else
        return false;
}
else
    return true;
