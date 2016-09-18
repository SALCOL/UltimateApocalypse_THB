simvis_attributes =
{
	selection_volume		= 1,
	selection_ground		= 1,

	vis_scale_min			= 1.4,	
	vis_scale_max			= 1.4,	

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 1,
	shadow_scale			= 0.10,

	vehicle_physics						= 1,
	vehicle_width							= 3,
	vehicle_length							= 4,	
	vehicle_nr_wheels					= 2,
	vehicle_spring_constant			= 0.0,
	vehicle_damper_constant		= 0.0,
	vehicle_wheel_travel				= 2,
	vehicle_acceleration_factor		= -0.6,
	vehicle_gravity						= 0.6,
	vehicle_debug_render				= 0,
	vehicle_height_offset              = 3.5,
	vehicle_float_on_water			= 1,
	vehicle_render_offset              = 65,
	
	occludee	= 1,
}

simvis_attributes_strings =
{
--	shadow_texture			= "Shadows/shadow_dir_blob-dot.tga"
}