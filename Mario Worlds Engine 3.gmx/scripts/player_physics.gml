///player_physics

/*
**  Name:
**      player_physics();
**
**  Function:
**      Manages the physics of the player object
*/

//Check if above a slope
slope = player_check_slope();

//Manage floor collision
player_physics_floor();

//If moving right and the player bumps a wall to the right
if (hspeed > 0) 
&& (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4-(slope*4), obj_solid, 1, 0)) {
    
    //Stop horizontal movement
    hspeed = 0;
    
    //Prevent the player from getting embed in the wall
    while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
    && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
        x--;
}

//Otherwise, if moving left and the player bumps a wall to the left
else if (hspeed < 0)
&& (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4-(slope*4), obj_solid, 1, 0)) {
    
    //Stop horizontal movement
    hspeed = 0;
    
    //Prevent the player from getting embed in the wall
    while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
    && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
        x++;
}

//If moving up...
if (vspeed < 0) {

    //...and the player bumps a ceiling
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) {
    
        //If the player is jumping or climbing
        if (state == statetype.jump) 
        || (state == statetype.climb) {
        
            while (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_solid, 1, 0)) 
                y++;
        }
        
        //Stop vertical movement
        vspeed = 0;
        
        //If the player is not climbing
        if (state != statetype.climb) {
        
            //Play 'Bump' sound
            //audio_play_sound(snd_bump, 0, false);
            
            //Stop variable jumping
            jumping = 2;
        }
    }
}

//If the player is not climbing
if (state != statetype.climb) {

    //If the player is not jumping and the controls are not disabled
    if (control_enable == true)
    && (state != statetype.jump) {
    
        //Makes the player crouch down if 'Down' is held
        if (keyboard_check(global.key_d)) 
            crouch = true;
        
        //Otherwise, make the player get up
        else if (!keyboard_check(global.key_d))
            crouch = false;
    }
    
    /*Manage player projectiles if 'Control' is pressed and the barrier is deactivated.
    if (keyboard_check_pressed(vk_control)) && (obj_levelcontrol.barrier == false)
        alarm[10] = 1;*/
}

//Otherwise, if the player is climbing
else if (state == statetype.climb) {

    //Disable ducking
    crouch = false;
    
    //Disable spin jump
    jumpstyle = false;
}

//Check for a swimming surface
var water = collision_rectangle(bbox_left, y-1, bbox_right, y, obj_swim, 0, 0);

//If there's a swimming surface
if (water) 
&& (swimming == false) {

    //Halve current horizontal speed
    hspeed = hspeed/2;
    
    //Make the player swim
    swimming = true;
    
    //Disable ducking
    crouch = false;
    
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}

//Otherwise, if the player had enough swimming and wants to get out of water
else if (!water)
&& (swimming == true) {

    //If there's not a solid above
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) {
    
        //If the player is moving up
        if (vspeed < 0)
        && (state == statetype.jump) {
        
            //If 'Action 0' is being held
            if (keyboard_check(global.key_action[0])) {
            
                //Play 'Jump' sound
                //audio_play_sound(snd_jump, 0, false);
                
                //Stop swimming
                swimming = false;
                
                //Allow variable jump
                jumping = 1;
                
                //Set vertical speed
                vspeed = -jumpstrength;
            }
            
            //Otherwise, stop vertical movement
            else {
            
                //If moving up
                if (vspeed < 0)
                    vspeed = 0;
            }
        }
    }
}

//Free the player is he is stuck on a solid.
if (vspeed == 0)
&& (crouch == false) 
&& (mask_index == spr_mask_player_big) {
    
    //If the player gets stuck
    if (inwall == false)
    && (collision_line(bbox_left, bbox_top+4, bbox_right, bbox_top+4,obj_solid,1,0)) {
    
        //If the direction was not set, set it up
        if (direct2 == 0) then direct2 = xscale;
        
        //Begin movement
        inwall = true;
        
        //Set the movement direction
        direct = -direct2;
    }
    
    //Otherwise, if the player gets stuck on a wall.
    else if (inwall == true) {
    
        //If the player is not longer stuck, allow movement
        if (!collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) 
        || (crouch == true) 
        || (global.powerup == cs_pow_small) {
        
            //End wall movement
            inwall = false;
            
            //Reset movement direction
            direct2 = 0;
        }
        
        //Push the player until it is not stuck
        x += 1*sign(direct);
        
        //If the player collides with a wall while being stuck, reverse direction
        if (collision_rectangle(bbox_left, y+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
        || (collision_rectangle(bbox_right, y+4, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
            direct = -direct;
    }
}

//Unstuck in case of overlapping a solid completely
if (inwall == false)
&& (state != statetype.jump)
    while (collision_rectangle(x-1, bbox_top, x+1, bbox_bottom, obj_solid, 1, 0))
        y--;
        
//If the player is not in contact with water.
if (!collision_rectangle(bbox_left, y, bbox_right, bbox_bottom, obj_swim, 0, 0))
&& (swimming == true)
    swimming = false;

//Prevent the player from going too high on the level
if (y < -96)
    y = -96;
    
//Otherwise, if he is falling.
else {

    /*
    //If the player falls into a pit
    if (bbox_bottom > room_height+32) {
    
        instance_create(x, y, obj_player_dead);
        instance_destroy();
        exit;
    }
    */
}
