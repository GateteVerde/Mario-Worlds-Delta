///player_behaviour

/*
**  Usage:
**      player_behaviour()
**
**  Purpose:
**      Manages movement of the player.
*/

//Figure out player's state
if (gravity == 0)
&& ((collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent, 1, 0))) {

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
    
//Set up the player's maximum horizontal speed.
if (keyboard_check(global.key_action[1])) { //If the control key is being held.

    //If the player is not flying
    if (flying == 0) {
        
        //If the P-Meter is filled up.
        if (run)
            hspeedmax = hspeed_run_full;
        
        //Otherwise, if the P-Meter is not filled up.
        else    
            hspeedmax = hspeed_run;
    }
}               

//Otherwise, do not reduce speed until the player makes contact with the ground.  
else {

    hspeedmax = hspeed_walk;
}

//If controls are not disabled and the player is not embed in a wall
if (inwall == false) 
&& (control_enable == true) {

    //If 'Action 1' is pressed...
    if (keyboard_check_pressed(global.key_action[0]))
    
    //...and the player can jump.
    && (((state != statetype.jump)
    && (jumping == 0))
    
    //Allow the player to jump off of Yoshi or a shoe while in midair
    || ((keyboard_check(global.key_u))
    && (crouch == false)
    && (holding == 99)
    && (global.mount != 0))) {
    
        //If the 'Up' key is pressed
        if ((keyboard_check(global.key_u)) 
        && (crouch == false)
        && ((holding == 0) || (holding == 99))) {
        
            //If the player is riding a yoshi
            if (global.mount == 1) {
            
                /*            
                //Perform 'User Defined 1' event on obj_yoshi
                with (obj_yoshi) event_user(1);
                
                //If the player is on the ground
                if (state == statetype.idle)
                || (state == statetype.walk) {
                
                    //Play 'Spin' sound
                    audio_play_sound(snd_spin, 0, false);
                    
                    //Set horizontal speed
                    hspeed = 1*(xscale*-1)
                    
                    //Set jump style
                    jumpstyle = true;
                }
                
                //Otherwise
                else {
                
                    //Play 'Jump' sound
                    audio_play_sound(snd_jump, 0, false);
                }
                */
            }
            
            //Otherwise, perform spin jump
            else {
            
                //Play 'Spin' sound
                audio_play_sound(snd_spin, 0, false);
                
                //Set jump style
                jumpstyle = true;
            }
        }
        
        //Otherwise, perform regular jump
        else {
        
            //Play 'Jump' sound
            audio_play_sound(snd_jump, 0, false);
            
            //Set jump style
            jumpstyle = false;
        }
        
        //Switch to jump state
        state = statetype.jump;
        
        //Enable variable jumping
        jumping = 1; 
        
        //If the player is running and has the cape powerup
        if (run)
        && (global.powerup >= cs_pow_cape) {
        
            //Set vertical speed
            vspeed = -(jumpstrength*1.5)+abs(hspeed)/7.5*-1;
            
            //Initialize fly
            if (flying == 0)
            && (crouch == 0)
            && (holding == 0)
            && (jumpstyle == 0)
            && (global.mount == 0)
                flying = 1;
            else
                flying = 0;
        }
        else {
                
            //Jump high if you have the frog powerup, and you are not riding anything
            if (jumpstyle == true)        
                vspeed = -jumpstrength_spin+abs(hspeed)/7.5*-1;
        
            //Jump depending of the horizontal speed.
            else     
                vspeed = -jumpstrength+abs(hspeed)/7.5*-1;
        }
    }
    
    //Check if the player should still be variable jumping
    if (keyboard_check_released(global.key_action[0]))
    && (jumping == 1)
        jumping = 2;
        
    //If 'Right' is pressed and the player can move
    if ((keyboard_check(global.key_r)) && (allow_move()) && (!keyboard_check(global.key_l))) {
    
        //If the player is holding something, do a special turn
        if ((holding == 1) && (xscale != 1)) {
        
            turnnow = true;
            alarm[2] = 6;
        }
        
        //If the player is not embed on a wall
        if (inwall == 0)
            xscale = 1;
            
        //If there's not a wall on the way
        if (!collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4-(slope*4),obj_solid,1,0)) {
            
            //Check up the player's horizontal speed
            if (hspeed < hspeedmax) {
            
                //If the player is not overlapping a slippery surface
                if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
                
                    //If the player is not moving or moving to the right, increment speed
                    if (hspeed >= 0)
                        hspeed += acc;
                    
                    //Otherwise, if the player is moving in the opposite direction, go a little bit faster
                    else
                        hspeed += acc_turn;
                }
                
                //Otherwise, if the player is overlapping a slippery surface
                else if (collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
                
                    //If the player is not moving or moving to the right, increment speed
                    if (hspeed >= 0)
                        hspeed += acc/2;
                    
                    //Otherwise, if the player is moving in the opposite direction, go a little bit faster
                    else
                        hspeed += acc_turn/2;                            
                }
            }
        }
    }
    
    //Otherwise, if 'Left' is pressed and t
    else if ((keyboard_check(global.key_l)) && (allow_move()) && (!keyboard_check(global.key_r))) {
    
        //If the player is holding something, do a special turn
        if ((holding == 1) && (xscale != -1)) {
        
            turnnow = true;
            alarm[2] = 6;
        }
        
        //If the player is not embed on a wall
        if (inwall == 0)
            xscale = -1;
            
        //If there's not a wall on the way
        if (!collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4-(slope*4), obj_solid, 1, 0)) {
                
            //Check up the player's horizontal speed
            if (hspeed > -hspeedmax) {
            
                //If the player is not overlapping a slippery surface
                if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
                
                    //If the player is not moving or moving to the right, increment speed
                    if (hspeed <= 0)
                        hspeed += -acc;
                    
                    //Otherwise, if the player is moving in the opposite direction, go a little bit faster
                    else
                        hspeed += -acc_turn;
                }
                
                //Otherwise, if the player is overlapping a slippery surface
                else if (collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
                
                    //If the player is not moving or moving to the right, increment speed
                    if (hspeed <= 0)
                        hspeed += -acc/2;
                    
                    //Otherwise, if the player is moving in the opposite direction, go a little bit faster
                    else
                        hspeed += -acc_turn/2;                            
                }
            }
        }            
    }
    
    //Otherwise, if both are pressed or no input is given and the player is on the ground
    else if (vspeed == 0) {
    
        //If the player is not overlapping a slippery surface
        if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
        
            //Reduce player's horizontal speed
            hspeed = max(0, abs(hspeed)-dec)*sign(hspeed);
            
            //Set horizontal speed to 0 when the horizontal speed hits value in 'dec'.
            if (hspeed < dec)
            && (hspeed > dec*-1)
                hspeed = 0;
        }
        
        //Otherwise, if the player is overlapping a slippery surface
        else {
        
            //Reduce player's horizontal speed yet slower
            hspeed = max(0, abs(hspeed)-(dec/8))*sign(hspeed);
            
            //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
            if (hspeed < (dec/8))
            && (hspeed > -(dec/8))
                hspeed = 0;        
        }
    }
}

//Otherwise, if controls are not enabled or the player is embed in a wall.
else if (vspeed == 0) {

    //If the player is not overlapping a slippery surface
    if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
    
        //Reduce player's horizontal speed
        hspeed = max(0, abs(hspeed)-dec)*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec'.
        if (hspeed < dec)
        && (hspeed > dec*-1)
            hspeed = 0;
    }
    
    //Otherwise, if the player is overlapping a slippery surface
    else {
    
        //Reduce player's horizontal speed yet slower
        hspeed = max(0, abs(hspeed)-(dec/8))*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
        if (hspeed < (dec/8))
        && (hspeed > -(dec/8))
            hspeed = 0;        
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

//If 'Up' is pressed and there's a climbable vine or fence in position
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_climb, 1, 0)) 
&& (holding == 0)
&& (control_enable == true)
&& (keyboard_check(global.key_u)) {

    //Change to climbing state
    state = statetype.climb;
    
    //Stop vertical movement
    vspeed = 0;
    gravity = 0;    
}

//If 'Down' is pressed and there's a slope below the player
if (keyboard_check(global.key_d)) 
&& (control_enable == true)
&& (sliding == false)
&& (state != statetype.jump)
&& (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0))
&& (!collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_semisolid, 1, 0)) {
 
    //If the player is not holding anything or it is riding yoshi
    if (holding == 0) || (holding == 99) {
    
        //Start sliding down slope
        sliding = true;
        
        //Stop crouching down
        crouch = false;
        
        //Boost slide
        if (hspeed == 0)
            hspeed = 0.05*sign(xscale);
        else
            hspeed = hspeed/2;
    }
}

//Cape float
if ((global.powerup == cs_pow_cape)
|| (global.powerup == cs_pow_firecape)) {

    //Slowly fall down
    if (flying == 0)
    && (vspeed > 0)
    && (keyboard_check(global.key_action[0]))
        vspeed = 0.5;
        
    //Otherwise, if flying
    else if (flying == 1) {
    
        //Increment fly timer
        fly++;
        if (fly > 25) && (vspeed > 0) {
        
            //Create flying object
            if (instance_number(obj_cape_fly) == 0) {
                
                flying = 2;
                imflying = instance_create(x, y, obj_cape_fly);
                    imflying.xscale = self.xscale;
                    imflying.vspeed = self.vspeed/2;
            }
        }
    }
}
