if (flash) {
   gpu_set_fog(true, c_red, 0, 0);
   draw_self();
  gpu_set_fog(false, c_red, 0, 0);
  x += oPlayer.x_scale_ * oPlayer.flipped * 6
}
else {
   draw_self();
}