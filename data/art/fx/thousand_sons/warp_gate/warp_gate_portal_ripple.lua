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
					value = "ring_halo_combo",
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
		effect = "root>ring_halo_combo",
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
					value = 1,
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
					value = 0,
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
						3.93333,
						1,
						3.93333,
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
						0,
						1,
						0,
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
						0.39167,
						1,
						0.41667,
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
					value = "psychic_hood_smite_ring",
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
						5,
						0.43125,
						5.13333,
						0.75625,
						5.53333,
						0.81875,
						0,
						1,
						0,
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
		effect = "root>ring_halo_combo>psychic_hood_smite_ring",
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
						0,
						1,
						3.06667,
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
							0,
							0,
							0,
							0,
						},
						entry_01 =  
						{
							0.12527,
							24,
							24,
							26,
							0,
						},
						entry_02 =  
						{
							0.37255,
							36,
							38,
							43,
							0,
						},
						entry_03 =  
						{
							0.60893,
							36,
							36,
							38,
							0,
						},
						entry_04 =  
						{
							0.82462,
							0,
							0,
							0,
							0,
						},
						entry_05 =  
						{
							1,
							0,
							0,
							0,
							0,
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
					value = 0,
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
					value = 3,
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
					value = 0,
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
					value = 0,
				},
				property_18 =  
				{
					name = "SelfIlluminated",
					type = "VARTYPE_BOOL",
					value = 1,
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
					value = "SKINNIE_TEXTURES/DDS/FLASH/BLUE_RING_GLOW_00.DDS",
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
					value = 3,
				},
				property_25 =  
				{
					name = "DepthOffset",
					type = "VARTYPE_FLOAT",
					value = 0.30000,
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
}

