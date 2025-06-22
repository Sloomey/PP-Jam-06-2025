if (!array_contains(enemies, other))
{
	array_push(enemies, other);
	hp -= 1;
	other.path_speed = 1;
}