if (!array_contains(enemies, other))
{
	array_push(enemies, other);
	hp -= 1;
}