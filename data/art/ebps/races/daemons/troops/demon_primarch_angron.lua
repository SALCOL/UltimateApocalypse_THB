simvis_attributes =
{
	
	melee_size 									= 3,
	melee_block_ratio						= 80,
	melee_unsynced_damage_ratio = 7,

	selection_volume		= 1.3,
	selection_ground		= 1.3,

	vis_scale_min			= 1.3,	
	vis_scale_max			= 1.3,
	
	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 3,
	shadow_scale			= 0.1,
	
	distance_game_mesh_lod = 40,	
	occludee	= 1,
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-dot.tga"
}

