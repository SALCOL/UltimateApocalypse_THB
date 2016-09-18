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
					value = "spray_explosion",
				},
				property_02 =  
				{
					name = "FX3",
					type = "VARTYPE_STRING",
					value = "poison_burst_1",
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
		effect = "root>spray_explosion",
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
					value = 0,
				},
				property_06 =  
				{
					name = "Emitter_Drag",
					type = "VARTYPE_FLOAT",
					value = 0.60000,
				},
				property_07 =  
				{
					name = "Emitter_Ellipsoidal",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_08 =  
				{
					name = "Emitter_Surface",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_09 =  
				{
					name = "Emitter_Rate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						5,
						0.23500,
						6.06667,
						0.47125,
						9.46667,
						0.81125,
						17.60000,
						1,
						24.33333,
					},
				},
				property_10 =  
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
				property_11 =  
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
				property_12 =  
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
				property_13 =  
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
				property_14 =  
				{
					name = "Particle_Speed",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.10000,
						1,
						0.10000,
					},
				},
				property_15 =  
				{
					name = "Emitter_RotRate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_16 =  
				{
					name = "Particle_Fx",
					type = "VARTYPE_STRING",
					value = "flame_line_beam",
				},
				property_17 =  
				{
					name = "Particle_Dynamics",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_18 =  
				{
					name = "Particle_Gravity",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_19 =  
				{
					name = "Gravwell_Strength",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						9.81000,
						1,
						9.81000,
					},
				},
				property_20 =  
				{
					name = "Particle_Scale",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.73333,
						1,
						1.53333,
					},
				},
				property_21 =  
				{
					name = "Minimum_Cull_Radius",
					type = "VARTYPE_FLOAT",
					value = 5,
				},
				property_22 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_23 =  
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
		effect = "root>spray_explosion>flame_line_beam",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 3,
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
					value = "HAMMER_TRAIL_BEAM.TGA",
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
						8.86667,
						0.14750,
						8.53333,
						0.37625,
						7.13333,
						0.56000,
						4,
						0.67875,
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
						0,
						1,
						0,
					},
				},
				property_07 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_08 =  
				{
					name = "Texture_U_Offset",
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
						5.06667,
						0.08500,
						4.60000,
						0.22000,
						3.73333,
						0.37250,
						2.33333,
						0.57500,
						0,
						1,
						0,
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
							0,
							0,
							0,
							255,
						},
						entry_01 =  
						{
							0.05562,
							132,
							137,
							6,
							255,
						},
						entry_02 =  
						{
							0.10360,
							201,
							255,
							45,
							255,
						},
						entry_03 =  
						{
							0.19956,
							229,
							255,
							125,
							255,
						},
						entry_04 =  
						{
							0.37732,
							142,
							153,
							33,
							255,
						},
						entry_05 =  
						{
							0.80480,
							0,
							0,
							0,
							255,
						},
						entry_06 =  
						{
							1,
							0,
							0,
							0,
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
					value = 0.40000,
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
	 
	{
		effect = "root>poison_burst_1",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Fx1",
					type = "VARTYPE_STRING",
					value = "unit_sync_big_blood_spray",
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
					value = "",
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
		effect = "root>poison_burst_1>unit_sync_big_blood_spray",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Emitter_Duration",
					type = "VARTYPE_FLOAT",
					value = 4,
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
					value = 0,
				},
				property_06 =  
				{
					name = "Emitter_Drag",
					type = "VARTYPE_FLOAT",
					value = 0.10000,
				},
				property_07 =  
				{
					name = "Emitter_Ellipsoidal",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_08 =  
				{
					name = "Emitter_Surface",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_09 =  
				{
					name = "Emitter_Rate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						0.15750,
						31.86667,
						0.24250,
						49.33333,
						0.30250,
						51.73333,
						0.35750,
						48.26667,
						0.36750,
						47.20000,
						0.42750,
						47.73333,
						1,
						0,
					},
				},
				property_10 =  
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
				property_11 =  
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
				property_12 =  
				{
					name = "Emitter_Volume",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							1,
							0,
							1,
						},
						entry_01 =  
						{
							1,
							1,
							0,
							1,
						},
					},
				},
				property_13 =  
				{
					name = "Emitter_Offset",
					type = "VARTYPE_ARRAY_TIMEVECTOR3",
					value =  
					{
						entry_00 =  
						{
							0,
							0,
							0.10000,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							0.10000,
							0,
						},
					},
				},
				property_14 =  
				{
					name = "Particle_Speed",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_15 =  
				{
					name = "Emitter_RotRate",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_16 =  
				{
					name = "Particle_Fx",
					type = "VARTYPE_STRING",
					value = "unit_sync_big_blood_single_combo",
				},
				property_17 =  
				{
					name = "Particle_Dynamics",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_18 =  
				{
					name = "Particle_Gravity",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_19 =  
				{
					name = "Gravwell_Strength",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						9.81000,
						1,
						9.81000,
					},
				},
				property_20 =  
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
				property_21 =  
				{
					name = "Minimum_Cull_Radius",
					type = "VARTYPE_FLOAT",
					value = 5,
				},
				property_22 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_23 =  
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
		effect = "root>poison_burst_1>unit_sync_big_blood_spray>unit_sync_big_blood_single_combo",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Fx1",
					type = "VARTYPE_STRING",
					value = "unit_sync_big_blood_1_beam",
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
					value = "unit_sync_big_blood_2_beam",
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
		effect = "root>poison_burst_1>unit_sync_big_blood_spray>unit_sync_big_blood_single_combo>unit_sync_big_blood_1_beam",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 1,
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
					value = 1,
				},
				property_03 =  
				{
					name = "Texture",
					type = "VARTYPE_STRING",
					value = "Skinnie_textures/POISON_FX_PC_BURST_1_NO_COLOR.DDS",
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
						0,
						0.01375,
						0.80000,
						0.04875,
						1.66667,
						0.13000,
						2.33333,
						0.38750,
						3,
						1,
						3.73333,
					},
				},
				property_06 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_07 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_08 =  
				{
					name = "Texture_U_Offset",
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
					name = "Texture_U_Repeat",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.99000,
						1,
						0.99000,
					},
				},
				property_10 =  
				{
					name = "Width",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						0.05875,
						0.73333,
						0.17875,
						1.40000,
						1,
						2.26667,
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
							255,
							255,
							228,
						},
						entry_01 =  
						{
							0.12105,
							255,
							251,
							89,
							230,
						},
						entry_02 =  
						{
							0.36314,
							255,
							251,
							76,
							86,
						},
						entry_03 =  
						{
							0.86006,
							255,
							232,
							81,
							0,
						},
						entry_04 =  
						{
							1,
							132,
							119,
							32,
							0,
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
					value = 1,
				},
				property_14 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 1,
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
					value = 0.50000,
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
	 
	{
		effect = "root>poison_burst_1>unit_sync_big_blood_spray>unit_sync_big_blood_single_combo>unit_sync_big_blood_2_beam",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 1,
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
					value = 1,
				},
				property_03 =  
				{
					name = "Texture",
					type = "VARTYPE_STRING",
					value = "Skinnie_textures/POISON_FX_PC_BURST_2_NO_COLOR.DDS",
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
						0,
						0.01375,
						0.33333,
						0.05125,
						0.93333,
						0.10750,
						1.46667,
						0.36750,
						2.20000,
						1,
						2.80000,
					},
				},
				property_06 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						1,
						0,
					},
				},
				property_07 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						1,
						1,
						1,
					},
				},
				property_08 =  
				{
					name = "Texture_U_Offset",
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
					name = "Texture_U_Repeat",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.99000,
						1,
						0.99000,
					},
				},
				property_10 =  
				{
					name = "Width",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						0.02750,
						0.93333,
						0.09250,
						1.86667,
						0.21500,
						2.93333,
						1,
						5.86667,
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
							255,
							255,
							178,
						},
						entry_01 =  
						{
							0.12052,
							255,
							251,
							43,
							235,
						},
						entry_02 =  
						{
							0.35071,
							237,
							255,
							57,
							108,
						},
						entry_03 =  
						{
							0.71259,
							248,
							255,
							72,
							4,
						},
						entry_04 =  
						{
							1,
							255,
							255,
							255,
							0,
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
					value = 1,
				},
				property_14 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0.50000,
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
					value = 1,
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

