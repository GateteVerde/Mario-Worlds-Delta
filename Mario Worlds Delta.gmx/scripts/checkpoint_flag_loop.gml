///checkpoint_flag_loop();

/*
**  Name:
**      checkpoint_flag_loop();
**
**  Function:
**      Returns the appropiate looping flag sprite for the checkpoint
*/
    
//Mario
if (global.player == 0)
    return spr_checkpoint_mario_loop;
    
//Luigi
else if (global.player == 1)
    return spr_checkpoint_luigi_loop;
    
//Toad
else if (global.player == 2)
    return spr_checkpoint_toad_loop;
