function holster_weapon(_holsterToggle, _wpn)
{
	if (_holsterToggle) 
	{
		_wpn.sprite_index = noone;
		_wpn.safety = true;
	}
	
	else
	{
		_wpn.sprite_index = _wpn.sprite;
		_wpn.safety = false;
	}
}