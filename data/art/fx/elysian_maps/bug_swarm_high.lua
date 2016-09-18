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
					value = 1,
				},
				property_01 =  
				{
					name = "Emitter_Loop",
					type = "VARTYPE_BOOL",
					value = 1,
				},
				property_02 =  
				{
					name = "Emitter_RandomStartTime",
					type = "VARTYPE_BOOL",
					value = 1,
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
					value = 1,
				},
				property_07 =  
				{
					name = "Emitter_Rate",
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
							1,
							0,
							1,
						},
						entry_01 =  
						{
							1,
							10,
							0,
							10,
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
				property_12 =  
				{
					name = "Particle_Speed",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						50,
						1,
						50,
					},
				},
				property_13 =  
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
					name = "Particle_Gravity",
					type = "VARTYPE_FLOAT",
					value = 1,
				},
				property_17 =  
				{
					name = "Gravwell_Strength",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						500,
						1,
						500,
					},
				},
				property_18 =  
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
				property_19 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_20 =  
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
		effect = "root>spark_combo>possession_trail_hit",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Length",
					type = "VARTYPE_FLOAT",
					value = 2,
				},
				property_01 =  
				{
					name = "Width",
					type = "VARTYPE_FLOAT",
					value = 1.50000,
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
					value = "ELYSIAN_MAPS/_TEXTURES/BUG_TRAIL.DDS",
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
					value = 0.40000,
				},
				property_09 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 4,
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
					value = 0.50000,
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

