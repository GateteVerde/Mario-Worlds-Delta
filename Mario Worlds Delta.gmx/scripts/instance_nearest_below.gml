///instance_nearest_below(x, y, obj)

/*  
//  Returns the instance id of the object
//  that is nearest to the provided x and
//  y coordinates and is below the coordinates
//  on the y-plane.
//  
//  Returns: instance id or noone (-4)
*/  

var xx = argument[0];
var yy = argument[1];
var obj = argument[2];
var dis;
var nearest_dis = 999999;
var nearest_id = noone;

with (obj) {

    if (y > yy) {
    
        dis = point_distance(x, y, xx, yy);
        if (dis < nearest_dis) {
            nearest_dis = dis;
            nearest_id = id;
        }
    }
}

return nearest_id;
