///shard_create(x, y, sprite, image, speed, direction);

/*
**  Usage:
**      shard_create(x, y, sprite, image, speed, direction);
**
**  Given:
**      x           = X position
**      y           = Y Position
**      sprite      = Sprite of the shard
**      frame       = Frame of the shard
**      speed       = Speed of the shard
**      direction   = Direction of the shard
**
**  Returns:
**      Generates a shard with the given sprite and motion
*/

var s;
s = instance_create(argument[0], argument[1], obj_shard);
    s.sprite_index = argument[2];
    s.image_single = argument[3];
    s.speed = argument[4];
    s.direction = argument[5];
    
return s;
