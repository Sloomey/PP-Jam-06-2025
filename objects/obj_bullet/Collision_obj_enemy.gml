/// @description If the bullet hits an enemy

with (other)
{
	hp -= other.dmg
}

instance_destroy();