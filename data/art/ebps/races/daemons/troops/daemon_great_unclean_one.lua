simvis_attributes =
{
	vis_scale_min = 1.25,
	vis_scale_max = 1.25,
	
	melee_size 				= 2,		-- large
	melee_block_ratio	 		= 50,
	melee_unsynced_damage_ratio = 0,

	selection_child			= 1,
	selection_ground		= 1,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type				= 3,
	shadow_scale				= 0.3,
	
	persistent_body = 0 ,
	distance_game_mesh_lod = 40,
	occludee	= 1,
	
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-dot.tga"
}