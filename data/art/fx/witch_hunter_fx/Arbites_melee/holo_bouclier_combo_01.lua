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
					value = "holo_bord_ring_01",
				},
				property_01 =  
				{
					name = "Fx2",
					type = "VARTYPE_STRING",
					value = "holo_cross_ring_01",
				},
				property_02 =  
				{
					name = "FX3",
					type = "VARTYPE_STRING",
					value = "holo_cross_ring_02",
				},
				property_03 =  
				{
					name = "FX4",
					type = "VARTYPE_STRING",
					value = "holo_square_ring_01",
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
		effect = "root>holo_bord_ring_01",
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
						0.01500,
						0.04200,
						0.29000,
						0.04200,
						0.30625,
						0,
						0.35000,
						0,
						0.36000,
						0.04200,
						0.44000,
						0.04200,
						0.45125,
						0,
						0.49000,
						0,
						0.50750,
						0.04200,
						0.80000,
						0.04200,
						0.81500,
						0,
						1,
						0,
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
							0.05773,
							255,
							255,
							255,
							255,
						},
						entry_02 =  
						{
							0.06427,
							0,
							0,
							0,
							255,
						},
						entry_03 =  
						{
							0.07081,
							255,
							255,
							255,
							255,
						},
						entry_04 =  
						{
							0.07843,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.08606,
							255,
							255,
							255,
							255,
						},
						entry_06 =  
						{
							0.09259,
							0,
							0,
							0,
							255,
						},
						entry_07 =  
						{
							0.10131,
							255,
							255,
							255,
							255,
						},
						entry_08 =  
						{
							0.17974,
							255,
							255,
							255,
							255,
						},
						entry_09 =  
						{
							0.18410,
							0,
							0,
							0,
							255,
						},
						entry_10 =  
						{
							0.32026,
							0,
							0,
							0,
							255,
						},
						entry_11 =  
						{
							0.32571,
							255,
							255,
							255,
							255,
						},
						entry_12 =  
						{
							0.41721,
							255,
							255,
							255,
							255,
						},
						entry_13 =  
						{
							0.42484,
							0,
							0,
							0,
							255,
						},
						entry_14 =  
						{
							0.43464,
							0,
							0,
							0,
							255,
						},
						entry_15 =  
						{
							0.44227,
							255,
							255,
							255,
							255,
						},
						entry_16 =  
						{
							0.70806,
							255,
							255,
							255,
							255,
						},
						entry_17 =  
						{
							0.71569,
							255,
							255,
							255,
							255,
						},
						entry_18 =  
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
					value = 25,
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
					value = 0,
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
					value = "WITCH_HUNTER_FX/ARBITES_MELEE/HOLO_BORD_01.JPG",
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
	 
	{
		effect = "root>holo_cross_ring_01",
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
						0.11250,
						0,
						0.12500,
						0.04200,
						0.22500,
						0.04200,
						0.24125,
						0.03000,
						0.45625,
						0.03000,
						0.47500,
						0,
						0.65000,
						0,
						0.66000,
						0.04200,
						0.80000,
						0.04200,
						0.81500,
						0,
						1,
						0,
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
							0.21242,
							255,
							255,
							255,
							255,
						},
						entry_02 =  
						{
							0.21786,
							0,
							0,
							0,
							255,
						},
						entry_03 =  
						{
							0.22440,
							255,
							255,
							255,
							255,
						},
						entry_04 =  
						{
							0.22876,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.23638,
							255,
							255,
							255,
							255,
						},
						entry_06 =  
						{
							0.24183,
							0,
							0,
							0,
							255,
						},
						entry_07 =  
						{
							0.24728,
							255,
							255,
							255,
							255,
						},
						entry_08 =  
						{
							0.26144,
							110,
							110,
							110,
							255,
						},
						entry_09 =  
						{
							0.27669,
							255,
							255,
							255,
							255,
						},
						entry_10 =  
						{
							0.29085,
							125,
							125,
							125,
							255,
						},
						entry_11 =  
						{
							0.30392,
							255,
							255,
							255,
							255,
						},
						entry_12 =  
						{
							0.31808,
							125,
							125,
							125,
							255,
						},
						entry_13 =  
						{
							0.33115,
							255,
							255,
							255,
							255,
						},
						entry_14 =  
						{
							0.33660,
							0,
							0,
							0,
							255,
						},
						entry_15 =  
						{
							0.61983,
							0,
							0,
							0,
							255,
						},
						entry_16 =  
						{
							0.62527,
							255,
							255,
							255,
							255,
						},
						entry_17 =  
						{
							0.67756,
							255,
							255,
							255,
							255,
						},
						entry_18 =  
						{
							0.68301,
							0,
							0,
							0,
							255,
						},
						entry_19 =  
						{
							0.68954,
							255,
							255,
							255,
							255,
						},
						entry_20 =  
						{
							0.69717,
							0,
							0,
							0,
							255,
						},
						entry_21 =  
						{
							0.70479,
							255,
							255,
							255,
							255,
						},
						entry_22 =  
						{
							0.76035,
							255,
							255,
							255,
							255,
						},
						entry_23 =  
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
					value = 20,
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
					value = "WITCH_HUNTER_FX/ARBITES_MELEE/HOLO_CROSS_01.JPG",
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
	 
	{
		effect = "root>holo_cross_ring_02",
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
						0.17550,
						0,
						0.20000,
						0.04200,
						0.41000,
						0.04200,
						0.42000,
						0.03000,
						0.48000,
						0.03000,
						0.49625,
						0,
						0.81500,
						0,
						1,
						0,
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
							0.21242,
							255,
							255,
							255,
							255,
						},
						entry_02 =  
						{
							0.21786,
							0,
							0,
							0,
							255,
						},
						entry_03 =  
						{
							0.22440,
							255,
							255,
							255,
							255,
						},
						entry_04 =  
						{
							0.22876,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.23638,
							255,
							255,
							255,
							255,
						},
						entry_06 =  
						{
							0.24183,
							0,
							0,
							0,
							255,
						},
						entry_07 =  
						{
							0.24728,
							255,
							255,
							255,
							255,
						},
						entry_08 =  
						{
							0.35076,
							255,
							255,
							255,
							255,
						},
						entry_09 =  
						{
							0.36057,
							0,
							0,
							0,
							255,
						},
						entry_10 =  
						{
							0.36601,
							255,
							255,
							255,
							255,
						},
						entry_11 =  
						{
							0.37146,
							0,
							0,
							0,
							255,
						},
						entry_12 =  
						{
							0.38017,
							255,
							255,
							255,
							255,
						},
						entry_13 =  
						{
							0.48693,
							255,
							255,
							255,
							255,
						},
						entry_14 =  
						{
							0.49129,
							0,
							0,
							0,
							255,
						},
						entry_15 =  
						{
							0.66231,
							0,
							0,
							0,
							255,
						},
						entry_16 =  
						{
							0.66885,
							255,
							255,
							255,
							255,
						},
						entry_17 =  
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
					value = 22,
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
					value = 0,
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
					value = "WITCH_HUNTER_FX/ARBITES_MELEE/HOLO_CROSS_02.JPG",
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
	 
	{
		effect = "root>holo_square_ring_01",
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
						0.53000,
						0,
						0.54000,
						0.04200,
						0.80000,
						0.04200,
						0.81500,
						0,
						1,
						0,
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
							0.56645,
							255,
							255,
							255,
							255,
						},
						entry_02 =  
						{
							0.57298,
							0,
							0,
							0,
							255,
						},
						entry_03 =  
						{
							0.57952,
							255,
							255,
							255,
							255,
						},
						entry_04 =  
						{
							0.58715,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.59477,
							255,
							255,
							255,
							255,
						},
						entry_06 =  
						{
							0.60240,
							2,
							2,
							2,
							255,
						},
						entry_07 =  
						{
							0.61002,
							255,
							255,
							255,
							255,
						},
						entry_08 =  
						{
							0.73312,
							255,
							255,
							255,
							255,
						},
						entry_09 =  
						{
							0.74074,
							0,
							0,
							0,
							255,
						},
						entry_10 =  
						{
							0.74837,
							255,
							255,
							255,
							255,
						},
						entry_11 =  
						{
							0.75599,
							0,
							0,
							0,
							255,
						},
						entry_12 =  
						{
							0.76471,
							255,
							255,
							255,
							255,
						},
						entry_13 =  
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
					value = 21,
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
					value = 0,
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
					value = "WITCH_HUNTER_FX/ARBITES_MELEE/HOLO_SQUARE_01.JPG",
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

