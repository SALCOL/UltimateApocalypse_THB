simvis_attributes =
{
	melee_size 									= 1,		-- medium
	melee_block_ratio						= 50,
	melee_unsynced_damage_ratio = 10,

	selection_volume		= 1,
	selection_ground		= 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 1,
	shadow_scale			= 0.055,
	
	vis_scale_min			= 1.15,	
	vis_scale_max			= 1.15,	
	
	infantry_physics	    					= 1,
	infantry_sway_update_time		= 3,
	infantry_sway_random_radius	= 0.5,
	
	distance_game_mesh_lod = 40,	
	occludee	= 1,
}
