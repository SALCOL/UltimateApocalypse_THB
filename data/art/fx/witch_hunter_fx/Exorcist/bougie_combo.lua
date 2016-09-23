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
					value = "bougie_flamme_idle_01",
				},
				property_01 =  
				{
					name = "Fx2",
					type = "VARTYPE_STRING",
					value = "bougie_glow",
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
		effect = "root>bougie_flamme_idle_01",
		fx =  
		{
			properties =  
			{
				property_00 =  
				{
					name = "Duration",
					type = "VARTYPE_FLOAT",
					value = 5,
				},
				property_01 =  
				{
					name = "Loop",
					type = "VARTYPE_BOOL",
					value = 1,
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
					value = "WITCH_HUNTER_FX/EXORCIST/BOUGIE_FLAMME.JPG",
				},
				property_04 =  
				{
					name = "SelfIlluminated",
					type = "VARTYPE_BOOL",
					value = 1,
				},
				property_05 =  
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
				property_06 =  
				{
					name = "Length",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.15040,
						1,
						0.15093,
					},
				},
				property_07 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0,
						0.08850,
						0.00053,
						0.12450,
						0.09013,
						0.15750,
						0.00053,
						0.20850,
						0.05547,
						0.25650,
						0.00160,
						0.34200,
						0.00053,
						0.40125,
						0.20000,
						0.46650,
						0.06400,
						0.53500,
						0.13333,
						0.60450,
						0.00053,
						0.68125,
						0.13333,
						0.75750,
						0.00160,
						0.80550,
						0.12480,
						0.88200,
						0,
						1,
						0,
					},
				},
				property_08 =  
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
				property_09 =  
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
				property_10 =  
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
				property_11 =  
				{
					name = "Width",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.05440,
						1,
						0.05440,
					},
				},
				property_12 =  
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
							255,
						},
						entry_01 =  
						{
							0.22658,
							255,
							255,
							255,
							255,
						},
						entry_02 =  
						{
							0.25599,
							62,
							62,
							62,
							255,
						},
						entry_03 =  
						{
							0.27669,
							255,
							255,
							255,
							255,
						},
						entry_04 =  
						{
							0.49346,
							255,
							255,
							255,
							255,
						},
						entry_05 =  
						{
							0.56427,
							91,
							91,
							91,
							255,
						},
						entry_06 =  
						{
							0.63617,
							255,
							255,
							255,
							255,
						},
						entry_07 =  
						{
							1,
							255,
							255,
							255,
							255,
						},
					},
				},
				property_13 =  
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
							0.07612,
							0,
							0,
							0,
						},
						entry_02 =  
						{
							0.10299,
							0.05000,
							0,
							0,
						},
						entry_03 =  
						{
							0.12985,
							0,
							0,
							0,
						},
						entry_04 =  
						{
							0.31045,
							0,
							0,
							0,
						},
						entry_05 =  
						{
							0.32985,
							0.05000,
							0,
							0,
						},
						entry_06 =  
						{
							0.35373,
							-0.05000,
							0,
							0,
						},
						entry_07 =  
						{
							0.37164,
							0,
							0,
							0,
						},
						entry_08 =  
						{
							0.59254,
							0,
							0,
							0,
						},
						entry_09 =  
						{
							0.60896,
							0,
							0.05000,
							0,
						},
						entry_10 =  
						{
							0.63134,
							0,
							0,
							0,
						},
						entry_11 =  
						{
							0.68657,
							0,
							0,
							0,
						},
						entry_12 =  
						{
							0.70746,
							0,
							0,
							0.05000,
						},
						entry_13 =  
						{
							0.72985,
							0,
							0,
							0,
						},
						entry_14 =  
						{
							0.80746,
							0,
							0,
							0,
						},
						entry_15 =  
						{
							0.82985,
							-0.05000,
							0,
							0,
						},
						entry_16 =  
						{
							0.85672,
							0,
							0,
							0,
						},
						entry_17 =  
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
					name = "LengthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_15 =  
				{
					name = "WidthEpsilon",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_16 =  
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
				property_17 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_18 =  
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
		effect = "root>bougie_glow",
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
						0.40000,
						0.07525,
						0.42200,
						0.09000,
						0.24400,
						0.14475,
						0.41800,
						0.29625,
						0.40000,
						0.30562,
						0.30000,
						0.31625,
						0.33333,
						0.32813,
						0.16667,
						0.33687,
						0.26667,
						0.35250,
						0.23333,
						0.38750,
						0.20000,
						0.39750,
						0.30000,
						0.42062,
						0.26667,
						0.45000,
						0.40000,
						0.47075,
						0.38000,
						0.48350,
						0.42200,
						0.51200,
						0.38600,
						0.53300,
						0.41000,
						0.53950,
						0.38000,
						0.55450,
						0.35000,
						0.56475,
						0.42400,
						0.57575,
						0.37000,
						0.60075,
						0.40400,
						0.61900,
						0.38000,
						0.62550,
						0.40400,
						0.64950,
						0.38800,
						0.67475,
						0.40400,
						0.70175,
						0.36800,
						0.71900,
						0.39000,
						0.74750,
						0.38600,
						0.76475,
						0.38800,
						0.77800,
						0.40400,
						0.78800,
						0.40400,
						1,
						0.40000,
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
							0.05000,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							0.05000,
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
							255,
							255,
							255,
							255,
						},
						entry_01 =  
						{
							1,
							255,
							255,
							255,
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
					value = 5,
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
					value = 1,
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
					value = "WITCH_HUNTER_FX/EXORCIST/BOUGIE_GLOW.JPG",
				},
				property_21 =  
				{
					name = "Mesh",
					type = "VARTYPE_STRING",
					value = "model.sgm",
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
					name = "RandomBitmap",
					type = "VARTYPE_BOOL",
					value = 0,
				},
				property_25 =  
				{
					name = "SortOrder",
					type = "VARTYPE_INT",
					value = 0,
				},
				property_26 =  
				{
					name = "DepthOffset",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_27 =  
				{
					name = "Detail_From",
					type = "VARTYPE_FLOAT",
					value = 0,
				},
				property_28 =  
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

