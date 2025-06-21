/// @description This is the alarm that lets the enemy wander around

move_time += 1;


move_normalized(h, v, spd);

if (move_time < move_stop_time) alarm_set(1, 1);
else move_time = 0;