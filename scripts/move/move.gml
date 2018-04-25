///@param speed
///@param bounce
var speed_ = argument0;
var bounce_ = argument1;

if place_meeting(x+speed_[h], y, oCollison)  {
	while !place_meeting(x+sign(speed_[h]), y, oCollison) {
		x += sign(speed_[h]);
	}
	if bounce_ > 0 {
		speed_[@ h] = -speed_[@ h]*bounce_;
		
	} else {
		speed_[@ h] = 0;
	}
}
x += speed_[h];

if place_meeting(x, y+speed_[ve], oCollison) {
	while !place_meeting(x, y+sign(speed_[ve]), oCollison) {
		y += sign(speed_[ve]);
	}
	if bounce_ > 0 {
		speed_[@ ve] = -speed_[@ ve]*bounce_;
		
	} else {
		speed_[@ ve] = 0;
	}
}
y += speed_[@ ve];
