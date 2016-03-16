var target, target_dir, diff;
target = argument0;
target_dir = point_direction(x, y, argument0.x,argument0.y);
diff = ((target_dir - image_angle) mod 360 + 540) mod 360 - 180;
if (abs(diff) < argument1) {
   image_angle = target_dir;
}
else
{
   image_angle += sign(diff) * argument1;
}
if collision_line(x,y,target.x,target.y,target,true,true)
{
    motion_add(image_angle, argument2);
}
if (speed > argument3) 
{
    speed = argument3;
}
