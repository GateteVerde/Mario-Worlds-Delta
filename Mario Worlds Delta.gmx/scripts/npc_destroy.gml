///npc_destroy();

/*
**  Usage:
**      npc_destroy();
**
**  Function:
**      Makes NPCs able to be destroyed with solid blocks
*/

//For each instance active
for (i=0; i<instance_count; i++) {

    //With each instance
    with (instance_id[i]) {
    
        //If the object is ancestor of obj_physicsparent
        if (object_is_ancestor(object_index, obj_physicsparent)) {

            //If the boundary checks are overlapping ground, kill the player
            if (!variable_instance_exists(object_index, "held"))
            || ((variable_instance_exists(object_index, "held")) && (held == 0)) {
            
                //If the object is covered by solids, destroy
                if (collision_point(bbox_left, bbox_top, obj_solid, 0, 0))
                && ((collision_point(bbox_left, bbox_bottom+1, obj_solid, 0, 0)) || (collision_point(bbox_left, bbox_bottom+1, obj_semisolid, 0, 0)))
                && (collision_point(bbox_right, bbox_top, obj_solid, 0, 0))
                && ((collision_point(bbox_right, bbox_bottom+1, obj_solid, 0, 0)) || (collision_point(bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))) {
                
                    //Play 'Spinstomp' sound
                    audio_play_sound(snd_spinstomp, 0, false);
                    
                    //Create 'Spinstomp' object
                    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinsmoke);
                    
                    //Destroy
                    instance_destroy();
                }
            }
            
            //If there's a moving solid at the right
            var solid_l = collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 0);
            if (solid_l)
            && (solid_l.hspeed > 0)
                x = solid_l.bbox_right+5+hspeed;
            
            //If there's a moving solid at the right
            var solid_r = collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 0);
            if (solid_r)
            && (solid_r.hspeed < 0)
                x = solid_r.bbox_left-5+hspeed;
        }
    }
}
