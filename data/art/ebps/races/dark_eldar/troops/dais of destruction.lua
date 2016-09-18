simvis_attributes =
{
	melee_size 									= 1,
	melee_block_ratio						= 50,
	melee_unsynced_damage_ratio = 5,
	selection_volume		= 1,
	selection_ground		= 1,

	vis_scale_min = 1.15,
	vis_scale_max = 1.15,	
	
	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 2,
	shadow_scale			= 0.16,

	vehicle_physics			= 1,
	vehicle_width			= 3.6,
	vehicle_length			= 8,	
	vehicle_nr_wheels		= 2,
	vehicle_spring_constant		= 0.0,
	vehicle_damper_constant		= 0.0,
	vehicle_wheel_travel		= 2,
	vehicle_acceleration_factor	= -0.6,
	vehicle_gravity			= 0.6,
	vehicle_debug_render		= 0,
	vehicle_height_offset           = 3.0,
	vehicle_float_on_water		= 1,
	vehicle_render_offset           = 0.3,
	
	occludee	= 1,
}

simvis_attributes_strings =
{
	--shadow_texture		= "Shadows/shadow_dir_blob-dot.tga"
	shadow_texture			= "Shadows/shadow_dir_blob-raider.tga"
}