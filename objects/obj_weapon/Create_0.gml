/// @description Initiate variables

held_by = noone;

equipped_distance = 25// The spacing between the gun and the entity
safety = false; // If safety is true then the weapon wont attack

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
	if (!safety)
	{
		// Making "bullet"
		with (instance_create_layer(_startX, _startY, "Instances", obj_bullet))
		{
			image_angle = other.image_angle;
			
			dmg = other.dmg;
		}
	}
}