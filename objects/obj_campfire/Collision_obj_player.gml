/// @description ?

if (can_heal)
{
	other.hp = clamp(other.hp + 2, 0, other.hpMax);
	
	can_heal = false;
	alarm[0] = 5;
}