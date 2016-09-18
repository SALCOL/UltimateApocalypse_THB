simvis_attributes =
{
	melee_size 									= 1,		-- medium
	melee_block_ratio						= 50,
	melee_unsynced_damage_ratio = 10,

	selection_child			= 1,
	selection_ground		= 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 2,
	shadow_scale			= 0.09,
	
	vehicle_physics			= 1,
	vehicle_width			= 3,
	vehicle_length			= 4,	
	vehicle_nr_wheels		= 2,
	vehicle_spring_constant	= 0.0,
	vehicle_damper_constant	= 0.0,
	vehicle_wheel_travel		= 1.0,
	vehicle_acceleration_factor	= -0.6,
	vehicle_gravity			= 1.0,
	vehicle_debug_render		= 0,
	vehicle_height_offset            = 1.26,
	vehicle_float_on_water		= 1,
	--vehicle_render_offset              	= -.7,
	
		occludee	= 1,
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-tomb_spyder.tga"
}
