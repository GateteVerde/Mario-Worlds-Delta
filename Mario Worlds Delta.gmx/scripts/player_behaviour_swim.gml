///player_behaviour_swim()

/*
**  Usage:
**      player_behaviour_swim()
**
**  Purpose:
**      Manages movement of the player when swimming
*/

//Stop spin jump
jumpstyle = false;

//Stop sliding down
sliding = false;

//Stop cape flight
flying = 0;

//Figure out player's state
if (gravity == 0)
&& ((collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_semisolidparent, 0, 0))
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0))) {

    //If the player is not moving up
    if (vspeed >= 0) {
    
        //Reset state delay
        delay = 0;
    
        //If the player is not holding anything
        if (holding != 1) {
        
            //Figure out if the player is idle or walking
            if (hspeed == 0)
                state = statetype.idle;
            else
                state = statetype.walk;
        }
        else
            state = statetype.jump;
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

//Make the player get up if jumping
if (state == statetype.jump)
&& (crouch == true)
    crouch = false;

//Cap player vertical speed
if (vspeed < -2)
    vspeed = -2;
if (vspeed > 4)
    vspeed = 4;
    
//Cap player horizontal speed
if (state == statetype.jump)
    hspeedmax = 2;
else
    hspeedmax = 0.5;
    
//If controls are not disabled and the player is not embed in a wall
if (inwall == false) 
&& (control_enable == true) {

    //If 'Action 1' is pressed and the player is not holding anything
    if (holding != 1)
    && ((input_check_pressed(input.action0))
    || (input_check_pressed(input.action2))) {
    
        //Play 'Swim' sound
        audio_play_sound(snd_swim, 0, false);
        
        //Switch to jump state
        state = statetype.jump;
        
        //Set vertical speed
        vspeed = -1.5;
        
        //If 'Up' is pressed
        if (input_check(input.up)) {
        
            //Set the vertical speed
            vspeed -= 1;
            
            //Dismount from yoshi
            if (global.mount == 1)            
                with (obj_yoshi) event_user(0);
        }
        
        //Otherwise, if 'Down' is pressed
        else if (input_check(input.down))
            vspeed += 1;
    }
    
    //Make the player float when holding an item
    if (holding == 1) {
    
        //If the 'Down' key is not pressed
        if (!input_check(input.down)) {
        
            //Cancel dive
            dive = 0;
            
            //Move up
            vspeed -= 0.1;
            if (vspeed < -1)
                vspeed = -1;
        }
            
        //Otherwise
        else {
            
            //Play 'Swim' sound if the player just started diving
            if (dive == 0) {
            
                dive = 1;
                audio_play_sound(snd_swim, 0, false);
            }
            
            //Set the vertical speed
            vspeed += 0.1;
            
            //If moving down
            if (vspeed > 0) {
            
                //If there's no ground below
                if (state == statetype.jump) {
                
                    if (vspeed > 0.85)
                        vspeed = 0.85;
                }
                else
                    vspeed = 0;
            }            
        }
    }

    //If the player presses the 'Right' key and the 'Left' key is not held.
    if ((input_check(input.right)) && (!crouch) && (!input_check(input.left))) {
        
        //Set the facing direction
        if ((holding == 1) && (xscale != 1)) {
        
            turnnow = 1;
            alarm[2] = 12;
        }
        xscale = 1;
        
        //If there's NOT a wall on the way.
        if (!collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4-(slope*4),obj_solidparent, 1, 0)) {
        
            //Set the horizontal speed.
            if (hspeed >= 0) //If the player horizontal speed is equal/greater than 0.        
                hspeed += acc_swim;
            
            //Otherwise, If the player horizontal speed is lower than 0.
            else         
                hspeed += acc_swim*2;
        }
    }
    
    //If the player presses the 'Left' key and the 'Right' key is not held.
    else if ((input_check(input.left)) && (!crouch) && (!input_check(input.right))) {
        
        //Set the facing direction
        if ((holding == 1) && (xscale != -1)) {
        
            turnnow = 1;
            alarm[2] = 12;
        }
        xscale = -1;
        
        //If there's NOT a wall on the way.
        if (!collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4-(slope*4),obj_solidparent, 1, 0)) {
        
            //Set the horizontal speed.
            if (hspeed <= 0) //If the player horizontal speed is equal/lower than 0.        
                hspeed += -acc_swim;
                
            //Otherwise, If the player horizontal speed is greater than 0. 
            else        
                hspeed += -acc_swim*2;
        }      
    }
    
    //Otherwise, if neither of the 'Left' key or 'Right' key is not held.
    else if (vspeed == 0) { //If the player is on the ground.
    
        //Reduce the player speed until he stops.
        hspeed = max(0,abs(hspeed)-dec_swim)*sign(hspeed);
        
        //Set up horizontal speed to 0 when xspeed hits the value given on 'dec_swim'.
        if ((hspeed < dec_swim) && (hspeed > -dec_swim))      
            hspeed = 0;     
    }
}
else if (vspeed == 0) {
    
    //Reduce the player speed until he stops.
    hspeed = max(0,abs(hspeed)-dec_swim)*sign(hspeed);
    
    //Set up horizontal speed to 0 when xspeed hits the value given on 'dec_swim'.
    if ((hspeed < dec_swim) && (hspeed > -dec_swim))      
        hspeed = 0;     
}

//Prevent the player from sliding too fast.
if (hspeed > hspeedmax)
    hspeed = hspeedmax;
if (hspeed < -hspeedmax)
    hspeed = -hspeedmax;
    
//Apply ygrav
if ((state == statetype.jump) || (delay > 0))
    gravity = grav_swim;     
