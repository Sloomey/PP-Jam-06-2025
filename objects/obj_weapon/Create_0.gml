/// @description Initiate variables

held_by = noone;

equipped_distance = 25// The spacing between the gun and the entity

dir = 0;

sprite_index = sprite;
	
function equip(_pickedUpBy)
{
	var _self = self;
	// Making a visual of the weapon
	with instance_create_layer(_pickedUpBy.x, _pickedUpBy.y, "EquippedGuns", obj_weapon)
	{
		sprite_index = _self.sprite;
		held_by = _pickedUpBy;
	}
}
	
function attack(_startX, _startY)
{
	// Making "bullet"
	with (instance_create_layer(_startX, _startY, "Instances", obj_bullet))
	{
		dir = other.dir;
		image_angle = dir;
			
		dmg = other.dmg;
	}
}