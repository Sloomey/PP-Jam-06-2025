/// @description Initiate variables

held_by = noone;
hover_radius = 10;

equipped_distance = 25// The spacing between the gun and the entity
safety = false; // If safety is true then the weapon wont attack
magLeft = magSize;

sprite_index = sprite;

can_shoot = true;
	
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
	if (!safety && magLeft > 0 && can_shoot && !alarm[0])
	{
		
		audio_sound_pitch(shot_sound, random_range(0.85, 1));
		audio_play_sound(shot_sound, 1, false);
		
		magLeft -= 1;
		can_shoot = false
		alarm[1] = 40;
		
		var spawn_distance = 32; // Example distance
		var spawn_x_offset = lengthdir_x(spawn_distance, image_angle);
		var spawn_y_offset = lengthdir_y(spawn_distance, image_angle);
		// Making "bullet"
		with (instance_create_layer(_startX + spawn_x_offset, _startY + spawn_y_offset, "Instances", obj_bullet))
		{
			image_angle = other.image_angle;
			
			dmg = other.dmg;
		}
		
		// Creating a light from the gun
		with (instance_create_layer(x + lengthdir_x(sprite_width / 2, image_angle), y + lengthdir_y(sprite_width / 2, image_angle), layer, obj_light)) 
		{
			alarm_set(0, 2);
			image_xscale = 0.1;
			image_yscale = 0.1;
		}
	}
}

function reload() 
{
	alarm_set(0, reloadTime);
}