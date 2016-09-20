simvis_attributes =
{
	melee_size 							= 1,
	melee_block_ratio						= 50,
	melee_unsynced_damage_ratio = 5,
	selection_volume		= 0.85,
	selection_ground		= 0.85,

	vis_scale_min			= 0.8,	
	vis_scale_max			= 0.8,	
	
	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 3,
	shadow_scale			= 0.08,
	
	occluder 			= 1,
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-dot.tga"
}