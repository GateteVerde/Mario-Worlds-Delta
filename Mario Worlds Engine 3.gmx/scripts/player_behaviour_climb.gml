///player_behaviour_climb()

/*
**  Usage:
**      player_behaviour_climb()
**
**  Purpose:
**      Manages movement of the player when climbing a fence.
*/

//Stop spin jumping
jumpstyle = false;

//Stop sliding down
sliding = false;

//If controls are enabled
if (control_enable == true) {

    //If the 'Right' key is pressed and the 'Left' key is not pressed
    if (keyboard_check(global.key_r)) && (!keyboard_check(global.key_l)) {
    
        //Set facing direction
        xscale = 1;
        
        //Increment speed...
        hspeed += 0.15;
        
        //...but cap it
        if (hspeed > 1)
            hspeed = 1;
    }
    
    //Otherwise, if 'Left' key is pressed and the 'Right' is not pressed
    else if (keyboard_check(global.key_l)) && (!keyboard_check(global.key_r)) {
    
        //Set facing direction
        xscale = -1;
        
        //Increment speed...
        hspeed += -0.15;
        
        //...but cap it
        if (hspeed < -1)
            hspeed = -1;        
    }
    
    //Otherwise, stop horizontal movement
    else    
        hspeed = 0;
    
    //If the 'Up' key is pressed and the 'Down' key is not pressed
    if (keyboard_check(global.key_u)) && (!keyboard_check(global.key_d)) {
    
        //If there's a ceiling on the way, prevent the player from moving up
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0))
            vspeed = 0;
            
        //Otherwise
        else {
            
            //If there's not a climbable surface above
            if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_climb, 0, 0))
                vspeed = 0;
            
            //Otherwise, if there's a climbable surface above
            else {
            
                //Increment speed...
                vspeed += -0.15;
                
                //...but cap it
                if (vspeed < -1)
                    vspeed = -1;
            }
        }
    }
    
    //Otherwise, if the 'Down' key is pressed and the 'Up' key is not pressed
    else if (keyboard_check(global.key_d)) && (!keyboard_check(global.key_u)) {
    
        //Increment speed
        vspeed += 0.15;
        
        ///If moving down
        if (vspeed > 0) {
        
            //Cap vertical speed
            if (vspeed > 1)
                vspeed = 1;
                
            //If there's a semisolid below, abort climbing
            var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_semisolid, 0, 0);
            if (semisolid)
                state = statetype.jump;
        }
    }
    
    //Otherwise, stop vertical movement
    else
        vspeed = 0;
        
    //If 'Action 1' is pressed, make the player jump
    if (keyboard_check_pressed(global.key_action[0])) {
    
        //Set the vertical speed
        vspeed = -jumpstrength;
        
        //Set the state
        state = statetype.jump;
        
        //Allow variable jump
        jumping = 1;
        
        //Play 'Jump' sound
        //audio_play_sound(snd_jump, 0, false);
    }
}

//Check if there's a not climbable surface overlapping the player.
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0))        
    state = statetype.jump;
