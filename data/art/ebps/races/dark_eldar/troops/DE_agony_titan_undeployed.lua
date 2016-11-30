simvis_attributes =
{
	melee_size 									= 1,
	melee_block_ratio						= 50,
	melee_unsynced_damage_ratio = 5,
	selection_volume		= 0.5,
	selection_ground		= 1,

	vis_scale_min = 1.0,
	vis_scale_max = 1.0,	
	
	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 2,
	shadow_scale			= 0.13,
	
	occludee	= 1,
}

simvis_attributes_strings =
{
	--shadow_texture		= "Shadows/shadow_dir_blob-dot.tga"
	shadow_texture			= "Shadows/shadow_dir_blob-raider.tga"
}