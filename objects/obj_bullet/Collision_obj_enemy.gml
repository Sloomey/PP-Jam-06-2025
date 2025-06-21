/// @description If the bullet hits an enemy

with (other)
{
	hp -= other.dmg
	show_debug_message(hp)
}

instance_destroy();