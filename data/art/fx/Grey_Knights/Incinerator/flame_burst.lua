fxtypes =  
{
	 
	{
		effect = "root",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Fx1",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_01 =  
				{
					name = "Fx2",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_02 =  
				{
					name = "FX3",
					type = "VARTYPE_STRING",
					value = "flamer_muzzle_glow_ring",
				},
				property_03 =  
				{
					name = "FX4",
					type = "VARTYPE_STRING",
					value = "muzzle_flamer_1_beam",
				},
				property_04 =  
				{
					name = "FX5",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_05 =  
				{
					name = "FX6",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_06 =  
				{
					name = "FX7",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_07 =  
				{
					name = "FX8",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_08 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_09 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_COMBO",
		},
	},
	 
	{
		effect = "root>flamer_muzzle_glow_ring",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Radius",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1.50000,
						1,
						1.50000,
					},
				},
				property_01 =  
				{
					name = "Offset",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							0,
							1,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							1,
							0,
						},
					},
				},
				property_02 =  
				{
					name = "SpinX",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_03 =  
				{
					name = "SpinY",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_04 =  
				{
					name = "SpinZ",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_05 =  
				{
					name = "Colour",
					type = "VARTYPE_ARRAY_TIMECOLOUR",
					value =  
					{
						entry_00 =  
						{
							0,
							57,
							33,
							14,
							255,
						},
						entry_01 =  
						{
							0.12882,
							62,
							43,
							16,
							255,
						},
						entry_02 =  
						{
							0.42358,
							50,
							28,
							13,
							255,
						},
						entry_03 =  
						{
							0.83134,
							57,
							37,
							13,
							255,
						},
						entry_04 =  
						{
							1,
							57,
							36,
							12,
							255,
						},
					},
				},
				property_06 =  
				{
					name = "RadiusEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_07 =  
				{
					name = "RateEpsilon",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_08 =  
				{
					name = "SpinEpsilonX",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_09 =  
				{
					name = "SpinEpsilonY",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_10 =  
				{
					name = "SpinEpsilonZ",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_11 =  
				{
					name = "SpinRandom",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_12 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_13 =  
				{
					name = "UseMesh",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_14 =  
				{
					name = "UseDepthTest",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_15 =  
				{
					name = "UseDepthSort",
					type = "VARTYPE_BOOL",
					value = 1,
				},
				property_16 =  
				{
					name = "Loop",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_17 =  
				{
					name = "Billboard",
					type = "VARTYPE_BOOL",
					value = 1,
				},
				property_18 =  
				{
					name = "SelfIlluminated",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_19 =  
				{
					name = "Blending",
					type = "VARTYPE_INT",
					value = 2,
				},
				property_20 =  
				{
					name = "Texture",
					type = "VARTYPE_STRING",
					value = "DATA:ART/FX/GENERIC_EFFECTS_ALL/FIRING_COMBOS/TEXTURES/ROUND_FLASH.TGA",
				},
				property_21 =  
				{
					name = "Mesh",
					type = "VARTYPE_STRING",
					value = "Data:art/fx/box.sgm",
				},
				property_22 =  
				{
					name = "Spawn_Fx",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_23 =  
				{
					name = "BirthSpawn_Fx",
					type = "VARTYPE_STRING",
					value = "",
				},
				property_24 =  
				{
					name = "SortOrder",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_25 =  
				{
					name = "DepthOffset",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_26 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_27 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_RING",
		},
	},
	 
	{
		effect = "root>muzzle_flamer_1_beam",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 2,
				},
				property_01 =  
				{
					name = "Loop",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_02 =  
				{
					name = "Blending",
					type = "VARTYPE_INT",
					value = 2,
				},
				property_03 =  
				{
					name = "Texture",
					type = "VARTYPE_STRING",
					value = "DATA:ART/FX/GENERIC_EFFECTS_ALL/FIRING_COMBOS/TEXTURES/MUZZLE_FLAME.TGA",
				},
				property_04 =  
				{
					name = "Offset",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							0,
							0,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							0,
							0,
						},
					},
				},
				property_05 =  
				{
					name = "Length",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1.80000,
						0.25000,
						7,
						0.41125,
						1.80000,
						0.62500,
						0,
						1,
						0,
					},
				},
				property_06 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.02000,
						1,
						0.02000,
					},
				},
				property_07 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						5,
						1,
						5,
					},
				},
				property_08 =  
				{
					name = "Texture_U_Offset",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.01000,
						1,
						0.01000,
					},
				},
				property_09 =  
				{
					name = "Texture_U_Repeat",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_10 =  
				{
					name = "Width",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.50000,
						0.19750,
						4.60000,
						0.45750,
						0.50000,
						1,
						0.50000,
					},
				},
				property_11 =  
				{
					name = "Colour",
					type = "VARTYPE_ARRAY_TIMECOLOUR",
					value =  
					{
						entry_00 =  
						{
							0,
							255,
							246,
							206,
							255,
						},
						entry_01 =  
						{
							0.37255,
							255,
							248,
							204,
							0,
						},
						entry_02 =  
						{
							0.49455,
							171,
							203,
							252,
							239,
						},
						entry_03 =  
						{
							1,
							9,
							228,
							255,
							255,
						},
					},
				},
				property_12 =  
				{
					name = "Arc",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							0,
							0,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							0,
							0,
						},
					},
				},
				property_13 =  
				{
					name = "LengthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_14 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_15 =  
				{
					name = "WorldAlignAxis",
					type = "VARTYPE_VECTOR3",
					value =  
					{
						0,
						0,
						0,
					},
				},
				property_16 =  
				{
					name = "UseDepthTest",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_17 =  
				{
					name = "SortOrder",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_18 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_19 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_BEAM",
		},
	},
}

