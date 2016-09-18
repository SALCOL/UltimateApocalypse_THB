simvis_attributes =
{
	vis_scale_min = 1, -- where x.xx is a scaling factor. eg. 1.50 = %150
	vis_scale_max= 1.3,

	melee_size			= 0,		-- small
	melee_block_ratio		= 50,
	melee_unsynced_damage_ratio 	= 15,

	selection_volume		= 1,
	selection_ground		= 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 1,
	shadow_scale			= 0.012,
	
	infantry_physics	    	= 1,
	infantry_sway_update_time	= 1.0,
	infantry_sway_random_radius	= 0.5,
	occludee			= 1,
}
