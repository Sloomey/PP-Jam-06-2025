/// @description This alarm is triggered every chosen time frame to wander more

if (passive)
{
	h = random_range(-1, 1);
	v = random_range(-1, 1);
	alarm_set(1,1);
	
	alarm_set(0, passive_wander_refresh);
}
