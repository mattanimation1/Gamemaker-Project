if !instance_exists(owner) instance_destroy()
var z = choose(.1,-.1,0)
lightSize += z;
lightSize = clamp(z, 3, 5)
