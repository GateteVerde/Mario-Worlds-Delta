///player_run();

/*
**  Usage:
**      player_run();
**
**  Purpose:
**      Makes the player run faster and allows him to do special abilities.
*/

//If the player horizontal speed is equal greater than the value given in "hspeed_run"
if (abs(hspeed) >= hspeed_run) {

    //If the player is not jumping or climbing
    if (state != statetype.jump)
    && (state != statetype.climb) {
    
        //If the P-Meter is full
        if (pmeter > 112) {
        
            //Keep it full
            pmeter = 112;
            
            //Make the player able to run
            if (run == false)
                run = true;
        }
        
        //Otherwise, fill it
        else
            pmeter += 2;
    }
    
    //Otherwise if the player is on the ground and not running
    else if (run == false) && (pmeter > 0)
        pmeter--;
}

//Otherwise, if the player horizontal speed is lower than the value given in "hspeed_run".
else if ((abs(hspeed) < hspeed_run) && (state != statetype.jump)) {

    //Make the player walk
    run = false;
    
    //Empty the P-Meter
    if (pmeter > 0)
        pmeter--;
}
