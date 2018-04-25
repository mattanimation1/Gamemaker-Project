image_xscale += scale_rate
image_yscale += scale_rate

if collision_circle(x,y, image_xscale/2,oCollison,1,1) instance_destroy()
if collision_line(x,y,x+lengthdir_x(image_xscale/2+speed,direction),y+lengthdir_y(image_yscale/2+speed,direction),oCollison, 1, 1) instance_destroy()