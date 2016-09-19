simvis_attributes =
{
	selection_child			= 1,
	selection_ground		= 1,

	vis_scale_min = 1,
	vis_scale_max = 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 2,
	shadow_scale			= 0.08,
	
	vehicle_physics						= 1,
	vehicle_width							= 1,
	vehicle_length							= 3,	
	vehicle_nr_wheels					= 2,
	vehicle_spring_constant			= 0.1,
	vehicle_damper_constant		= 0.2,
	vehicle_wheel_travel				= 2,
	vehicle_acceleration_factor		= -0.3,
	vehicle_gravity						= 0.6,
	vehicle_debug_render				= 0,
	vehicle_float_on_water			= 1,
	vehicle_height_offset              = 4.5,
	vehicle_render_offset              = 0,
	
		occludee	= 1,
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-jetbike.tga"
}
