///checkpoint_flag();

/*
**  Name:
**      checkpoint_flag();
**
**  Function:
**      Returns the appropiate flag sprite for the checkpoint
*/
    
//Mario
if (global.player == 0)
    return spr_checkpoint_mario;
    
//Luigi
else if (global.player == 1)
    return spr_checkpoint_luigi;
    
//Toad
else if (global.player == 2)
    return spr_checkpoint_toad;
