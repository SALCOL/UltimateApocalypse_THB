simvis_attributes =
{
	selection_child			= 1,
	selection_ground		= 1,

	vis_scale_min			= 1.1,	
	vis_scale_max			= 1.1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 3,
	shadow_scale			= 0.103,
	
	infantry_physics	    					= 1,
	infantry_sway_update_time		= 4,
	infantry_sway_random_radius	= 0.4,
	
	vehicle_physics						= 1,
	vehicle_width							= 4,
	vehicle_length							= 6,	
	vehicle_nr_wheels					= 2,
	vehicle_spring_constant			= 0.0,
	vehicle_damper_constant		= 0.0,
	vehicle_wheel_travel				= 2,
	vehicle_acceleration_factor		= -0.6,
	vehicle_gravity						= 0.6,
	vehicle_debug_render				= 0,
	vehicle_height_offset              = 2.25,
	vehicle_float_on_water			= 1,
	--vehicle_render_offset              = -.7,
	
	distance_game_mesh_lod = 40,	
	occludee	= 1,
}

simvis_attributes_strings =
{
--	shadow_texture			= "Shadows/shadow_dir_blob-Tau_Hammerhead.tga"
}
