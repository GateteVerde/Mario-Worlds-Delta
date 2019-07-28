///init_globals();

/*
**  Name:
**      init_globals();
**
**  Function:
**      Initializes the global variables needed for the game.
*/

//Initialize Colour Swap shader.
global.Pal_Shader = shd_palette_swapper;
pal_swap_init_system(global.Pal_Shader);

//Streams
global._stream = noone;
global._stream_starman = noone;
global._stream_pswitch = noone;

//Item Enumerators
enum itemtype {

    coin,
    coin_star,
    coin_multi,
    mushroom,
    fireflower,
    fireflower_plus,
    feather,
    feather_plus,
    star,
    lifeup,
    poison   
}

//Remember music from rooms
global.levelmusic = 'Game Over';

//Current Player
//0: Mario
//1: Luigi
global.player = 0;

//Time Limit
global.time = 0;

//World number
global.world = 1;

//Coin amount
global.coins = 0;

//Lives
lives = 5;

//Score
score = 0;

//Powerup
global.powerup = cs_pow_small;

//Whether a level is cleared.
global.clear = 0;

//Checkpoint
global.checkpoint = noone;

//Checkpoint Room
global.checkpointroom = noone;

//Position change object type
global.postchange = -1;

//Position change coordinates
global.postx = 0;
global.posty = 0;

//Whether Mario died
global.died = 0;

//Map pipe area spawn
global.pipetype = 0;

//Handle foregrounds
for (var i=0; i<8; i++;) {

    //Foregrounds
    global.bgfg[i] = false;
}

//Give points if there's enemies on the goal
global.bonus = -1;

//Is Mario riding a yoshi?
global.mount = 0;
global.mountcolour = 0;

//Item in reserve
global.reserveitem = 0;

//Whether the PSwitch effect was set in a room
global.pswitch = 0;

//Whether the Starman effect was set in a room
global.starman = 0;

//Item that is carried between rooms.
global.carrieditem = noone;

//Sprite of the item that is carried between rooms.
global.carriedsprite = noone;

//Handle the activation / deactivation of on/off blocks
global.onoff_block = 0;

//Handle the data structure of the 3up moons.
global.moons = ds_map_create();

//Handle the data structure of the ace coins.
global.dcoins = ds_map_create();
