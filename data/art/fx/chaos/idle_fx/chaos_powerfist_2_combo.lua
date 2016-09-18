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
					value = "unit_melee_powerfist_move_lightning_beam",
				},
				property_01 =  
				{
					name = "Fx2",
					type = "VARTYPE_STRING",
					value = "unit_melee_powerfist_move_lightning_beam2",
				},
				property_02 =  
				{
					name = "FX3",
					type = "VARTYPE_STRING",
					value = "unit_melee_powerfist_move_lightning_beam3",
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
					value = 0.50000,
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
		effect = "root>unit_melee_powerfist_move_lightning_beam",
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
					value = "UNIT_MELEE_POWERFIST_MOVE_BEAM.TGA",
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
							-0.20000,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							-0.20000,
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
						1,
						1,
						1,
					},
				},
				property_07 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.03000,
						1,
						0.03000,
					},
				},
				property_08 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						10,
						1,
						10,
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
						0.46667,
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
						1,
						1,
						1,
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
							0,
							0,
							0,
							255,
						},
						entry_01 =  
						{
							0.01482,
							0,
							0,
							0,
							255,
						},
						entry_02 =  
						{
							0.04333,
							204,
							144,
							160,
							255,
						},
						entry_03 =  
						{
							0.08096,
							0,
							0,
							0,
							255,
						},
						entry_04 =  
						{
							0.11752,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.13116,
							158,
							123,
							134,
							255,
						},
						entry_06 =  
						{
							0.16055,
							151,
							74,
							45,
							255,
						},
						entry_07 =  
						{
							0.18993,
							0,
							0,
							0,
							255,
						},
						entry_08 =  
						{
							0.23603,
							0,
							0,
							0,
							255,
						},
						entry_09 =  
						{
							0.26226,
							165,
							45,
							77,
							255,
						},
						entry_10 =  
						{
							0.29532,
							0,
							0,
							0,
							255,
						},
						entry_11 =  
						{
							0.34418,
							0,
							0,
							0,
							255,
						},
						entry_12 =  
						{
							0.36516,
							161,
							119,
							128,
							255,
						},
						entry_13 =  
						{
							0.38825,
							175,
							112,
							89,
							255,
						},
						entry_14 =  
						{
							0.45750,
							0,
							0,
							0,
							255,
						},
						entry_15 =  
						{
							0.50513,
							0,
							0,
							0,
							255,
						},
						entry_16 =  
						{
							0.53934,
							204,
							108,
							50,
							255,
						},
						entry_17 =  
						{
							0.57952,
							0,
							0,
							0,
							255,
						},
						entry_18 =  
						{
							0.61070,
							0,
							0,
							0,
							255,
						},
						entry_19 =  
						{
							0.62539,
							165,
							121,
							138,
							255,
						},
						entry_20 =  
						{
							0.65897,
							149,
							50,
							82,
							255,
						},
						entry_21 =  
						{
							0.75446,
							0,
							0,
							0,
							255,
						},
						entry_22 =  
						{
							1,
							0,
							0,
							0,
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
					value = 0.10000,
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
		effect = "root>unit_melee_powerfist_move_lightning_beam2",
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
					value = "UNIT_MELEE_POWERFIST_MOVE_BEAM2.TGA",
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
							-0.20000,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							-0.20000,
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
						1,
						1,
						1,
					},
				},
				property_07 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.01000,
						1,
						0.01000,
					},
				},
				property_08 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						10,
						1,
						10,
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
						0.40000,
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
						1,
						1,
						1,
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
							0,
							0,
							0,
							255,
						},
						entry_01 =  
						{
							0.07555,
							0,
							0,
							0,
							255,
						},
						entry_02 =  
						{
							0.10784,
							198,
							170,
							153,
							255,
						},
						entry_03 =  
						{
							0.13536,
							223,
							129,
							94,
							255,
						},
						entry_04 =  
						{
							0.19517,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.34313,
							0,
							0,
							0,
							255,
						},
						entry_06 =  
						{
							0.36831,
							151,
							119,
							126,
							255,
						},
						entry_07 =  
						{
							0.40305,
							119,
							43,
							68,
							255,
						},
						entry_08 =  
						{
							0.45226,
							0,
							0,
							0,
							255,
						},
						entry_09 =  
						{
							0.54774,
							0,
							0,
							0,
							255,
						},
						entry_10 =  
						{
							0.57188,
							163,
							116,
							129,
							255,
						},
						entry_11 =  
						{
							0.63589,
							0,
							0,
							0,
							255,
						},
						entry_12 =  
						{
							0.91291,
							0,
							0,
							0,
							255,
						},
						entry_13 =  
						{
							1,
							0,
							0,
							0,
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
					value = 0.10000,
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
		effect = "root>unit_melee_powerfist_move_lightning_beam3",
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
					value = "UNIT_MELEE_POWERFIST_MOVE_BEAM3.TGA",
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
							-0.20000,
							0,
						},
						entry_01 =  
						{
							1,
							0,
							-0.20000,
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
						1,
						1,
						1,
					},
				},
				property_07 =  
				{
					name = "Noise",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						0.01000,
						1,
						0.01000,
					},
				},
				property_08 =  
				{
					name = "Segments",
					type = "VARTYPE_ARRAY_TIMEFLOAT",
					value =  
					{
						0,
						10,
						1,
						10,
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
						0.40000,
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
						1,
						1,
						1,
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
							0,
							0,
							0,
							255,
						},
						entry_01 =  
						{
							0.07555,
							0,
							0,
							0,
							255,
						},
						entry_02 =  
						{
							0.11656,
							198,
							125,
							148,
							255,
						},
						entry_03 =  
						{
							0.13943,
							223,
							105,
							130,
							255,
						},
						entry_04 =  
						{
							0.19517,
							0,
							0,
							0,
							255,
						},
						entry_05 =  
						{
							0.34313,
							0,
							0,
							0,
							255,
						},
						entry_06 =  
						{
							0.36831,
							151,
							91,
							114,
							255,
						},
						entry_07 =  
						{
							0.40189,
							119,
							35,
							58,
							255,
						},
						entry_08 =  
						{
							0.45226,
							0,
							0,
							0,
							255,
						},
						entry_09 =  
						{
							0.54774,
							0,
							0,
							0,
							255,
						},
						entry_10 =  
						{
							0.57081,
							163,
							112,
							117,
							255,
						},
						entry_11 =  
						{
							0.63589,
							0,
							0,
							0,
							255,
						},
						entry_12 =  
						{
							0.91291,
							0,
							0,
							0,
							255,
						},
						entry_13 =  
						{
							1,
							0,
							0,
							0,
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
					value = 0.10000,
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
}

