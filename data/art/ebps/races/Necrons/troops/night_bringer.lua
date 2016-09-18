simvis_attributes =
{
	selection_volume		= 1,
	selection_ground		= 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 2,
	shadow_scale			= 0.07,

	vis_scale_min			= 1.5,
	vis_scale_max			= 1.5,
	
	vehicle_physics			= 1,
	vehicle_width			= 3,
	vehicle_length			= 4,
	vehicle_nr_wheels		= 2,
	vehicle_spring_constant	= 0.3,
	vehicle_damper_constant	= 0.2,
	vehicle_wheel_travel		= 2,
	vehicle_acceleration_factor	= -0.0,
	vehicle_gravity			= 1.0,
	vehicle_debug_render		= 0,
	vehicle_height_offset            = 0,
	vehicle_float_on_water		= 1,
--	vehicle_render_offset              = -.7,
	vehicle_max_angle                = 5,
	
		occludee	= 1,

}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-night_bringer.tga"
}