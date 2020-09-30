///player_behaviour_climb()

/*
**  Usage:
**      player_behaviour_climb()
**
**  Purpose:
**      Manages movement of the player when sliding down a slope
*/

//Stop spin jump
jumpstyle = false;

//Figure out player's state
if (gravity == 0)
&& (!collision_point(x, bbox_bottom, obj_ghostfloor, 1, 0))
&& ((collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0)) 
|| (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_semisolid_moving, 0, 0)))
|| ((collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_slopeparent, 1, 0))
|| (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_slopeparent_move, 1, 0))) 
|| (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_platform_seesaw, 1, 0)) {

    //If the player is not moving up
    if (vspeed >= 0) {
    
        //Reset state delay
        delay = 0;
    
        //Figure out if the player is idle or walking
        if (hspeed == 0)
            state = statetype.idle;
        else
            state = statetype.walk;
    }
    
    //Otherwise, if the player is moving up
    else if (vspeed < 0)
        state = statetype.jump;
}

//Otherwise, if the player is jumping
else {

    //Delay the change to the jump state
    delay++;
    if (delay > 4)
        state = statetype.jump;
}

//Cap player falling speed
if (vspeed > 4)
    vspeed = 4;
    
//Cap player horizontal speed
hspeedmax = hspeed_run;

//If controls are enabled
if (control_enable == true) {

    //If 'Action 1' is pressed, make the player jump
    if ((input_check_pressed(input.action0))
    || (input_check_pressed(input.action2)))
    && (jumping == 0)
    && (vspeed == 0)
    && (state != statetype.jump) {
    
        //Set the vertical speed
        vspeed = -jumpstrength+abs(hspeed)/7.5*-1;
        
        //Allow variable jump
        jumping = 1;
        
        //Stop sliding
        sliding = false;
        
        //End combo
        hitcombo = false;
        
        //Switch to jump state
        state = statetype.jump;
        
        //Play 'Jump' sound
        audio_stop_play_sound(snd_jump, 0, false);   
    }
}

//Check for a slope
slope_below = collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_slopeparent, 1, 0);

//If there's a slope below the player
if (slope_below)
    hspeed += slope_below.add;

//Otherwise, if there's not a slope below
else if (vspeed == 0) {

    //If the player is not overlapping a slippery surface
    if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
    
        //Reduce player's horizontal speed
        hspeed = max(0, abs(hspeed)-0.05)*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec'.
        if (hspeed < 0.05)
        && (hspeed > -0.05) {
        
            //Stop horizontal movement
            hspeed = 0;
            
            //Stop slide
            sliding = false;
            
            //End combo
            hitcombo = false;
        }
    }
    
    //Otherwise, if the player is overlapping a slippery surface
    else {
    
        //Reduce player's horizontal speed yet slower
        hspeed = max(0, abs(hspeed)-0.0125)*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
        if (hspeed < 0.0125)
        && (hspeed > -0.0125) {
        
            //Stop horizontal movement
            hspeed = 0;
                        
            //Stop slide
            sliding = false;
            
            //End combo
            hitcombo = false;
        }     
    }
}

//Cap player's horizontal speed
if (state != statetype.jump) { //If the player is not jumping

    //If the horizontal speed is greater than the target speed, cap it
    if (hspeed > hspeedmax)
        hspeed = hspeedmax;
        
    //Otherwise, if the horizontal speed is lower than the target speed, cap it
    if (hspeed < -hspeedmax)
        hspeed = -hspeedmax;
}

//If the player is not in the ground
if ((state == statetype.jump) || (delay != 0)) {

    //If the player vertical speed is lower than -2, and it is jumping
    if (vspeed < -2)
    && (jumping == 1)
        gravity = grav_alt;
        
    //Otherwise, use default gravity
    else {
    
        //Set gravity
        gravity = grav;
        
        //End variable jumping if it does not end manually
        if (jumping == 1)
            jumping = 2;
    }
}
