
move(speed_,0)
if !place_meeting(x, y+1, oCollison) {
	speed_[ve] += gravity_;
	image_speed = 0;
	image_index = 6;
}

if place_meeting(x+move_,y,oCollison) {
	speed_[ve] = jump_height_;
} else {
	x += move_
}

if place_meeting(x,y,oCollison) {
	y -= 16;
}