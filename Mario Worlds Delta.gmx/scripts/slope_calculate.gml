//slope_calculate()
//math by SuperSledgeBro
//platforming precision values
var slope_pos = (y + slope_y1) + ( (slope_y2 - slope_y1) * ( (other.x - (x + slope_x1) ) / (slope_x2 - slope_x1) ) )
var spritew = (other.sprite_width-sprite_get_xoffset(other.sprite_index));
var spriteh = (other.sprite_height-sprite_get_yoffset(other.sprite_index));
if other.x >= (x + slope_x1)
&& other.x <= (x + slope_x2)
&& (other.y + spriteh) >= (slope_pos - 8)
&& (other.y + spriteh) <= (slope_pos + 22) 
{
    other.y = slope_pos - spriteh;
    with (other)
    {   
        vspeed = 0;
        gravity = 0;

        //trigger special values
        event_user(15);
    }
}
