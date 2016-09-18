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
					name = "Emitter_Duration",
					type = "VARTYPE_FLOAT",
					value = 3,
				},
				property_01 =  
				{
					name = "Emitter_Loop",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_02 =  
				{
					name = "Emitter_RandomStartTime",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_03 =  
				{
					name = "Emitter_ScaleSpeed",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_04 =  
				{
					name = "Emitter_Direction",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_05 =  
				{
					name = "Emitter_InheritVelocity",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_06 =  
				{
					name = "Emitter_Drag",
					type = "VARTYPE_FLOAT",
					value = 0.85000,
				},
				property_07 =  
				{
					name = "Emitter_Rate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						0.23625,
						0,
						0.24125,
						25,
						0.34875,
						25,
						0.35375,
						0,
						1,
						0,
					},
				},
				property_08 =  
				{
					name = "Emitter_Rate_LOD%",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_09 =  
				{
					name = "Emitter_Deviation",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						360,
						1,
						360,
					},
				},
				property_10 =  
				{
					name = "Emitter_Volume",
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
				property_11 =  
				{
					name = "Emitter_Offset",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							0,
							0,
							1,
						},
						entry_01 =  
						{
							1,
							0,
							0,
							1,
						},
					},
				},
				property_12 =  
				{
					name = "Particle_Speed",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						13.26667,
						0.24000,
						12.06667,
						0.29625,
						15.53333,
						0.31625,
						9.86667,
						0.35500,
						15.13333,
						0.39250,
						9.53333,
						0.40750,
						14.66667,
						0.44125,
						10.20000,
						0.47750,
						14.80000,
						0.84125,
						11.86667,
						1,
						23.93333,
					},
				},
				property_13 =  
				{
					name = "Emitter_RotRate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						180,
						1,
						180,
					},
				},
				property_14 =  
				{
					name = "Particle_Fx",
					type = "VARTYPE_STRING",
					value = "spark_combo",
				},
				property_15 =  
				{
					name = "Particle_Dynamics",
					type = "VARTYPE_INT",
					value = 10,
				},
				property_16 =  
				{
					name = "Gravwell_Strength",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						45,
						1,
						45,
					},
				},
				property_17 =  
				{
					name = "Particle_Scale",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_18 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0.50000,
				},
				property_19 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_SPRAY",
		},
	},
	 
	{
		effect = "root>spark_combo",
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
					value = "possession_trail_hit",
				},
				property_02 =  
				{
					name = "FX3",
					type = "VARTYPE_STRING",
					value = "possession_trail_dark",
				},
				property_03 =  
				{
					name = "FX4",
					type = "VARTYPE_STRING",
					value = "",
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
		effect = "root>spark_combo>possession_trail_hit",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Length",
					type = "VARTYPE_FLOAT",
					value = 0.20000,
				},
				property_01 =  
				{
					name = "Width",
					type = "VARTYPE_FLOAT",
					value = 0.50000,
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
					value = "CHAOS/TEXTURES/CHAOS_MUZZLE_FLAME.TGA",
				},
				property_04 =  
				{
					name = "ColourHead",
					type = "VARTYPE_COLOUR",
					value =  
					{
						0,
						0,
						255,
						255,
					},
				},
				property_05 =  
				{
					name = "ColourTail",
					type = "VARTYPE_COLOUR",
					value =  
					{
						255,
						0,
						0,
						255,
					},
				},
				property_06 =  
				{
					name = "Billboard",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_07 =  
				{
					name = "DeathRate",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_08 =  
				{
					name = "FadeOutTime",
					type = "VARTYPE_FLOAT",
					value = 0.50000,
				},
				property_09 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 2,
				},
				property_10 =  
				{
					name = "LengthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_11 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_12 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_13 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_TRAIL",
		},
	},
	 
	{
		effect = "root>spark_combo>possession_trail_dark",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Length",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_01 =  
				{
					name = "Width",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_02 =  
				{
					name = "Blending",
					type = "VARTYPE_INT",
					value = 1,
				},
				property_03 =  
				{
					name = "Texture",
					type = "VARTYPE_STRING",
					value = "CHAOS/TEXTURES/POSSESSION_DARK_TRAIL.TGA",
				},
				property_04 =  
				{
					name = "ColourHead",
					type = "VARTYPE_COLOUR",
					value =  
					{
						0,
						0,
						255,
						255,
					},
				},
				property_05 =  
				{
					name = "ColourTail",
					type = "VARTYPE_COLOUR",
					value =  
					{
						255,
						0,
						0,
						255,
					},
				},
				property_06 =  
				{
					name = "Billboard",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_07 =  
				{
					name = "DeathRate",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_08 =  
				{
					name = "FadeOutTime",
					type = "VARTYPE_FLOAT",
					value = 0.50000,
				},
				property_09 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 2,
				},
				property_10 =  
				{
					name = "LengthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_11 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_12 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_13 =  
				{
					name = "Detail_To",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
			},
			style = "STYLE_TRAIL",
		},
	},
}

