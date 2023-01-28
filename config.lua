
Config = {}

Config.Npc = {

	hospital = { 
		coords = vector3(323.74, -580.51, 43.32),	-- พิกัดของตัว NPC 
		NPC = {
			Model = "mp_m_freemode_01",				-- Model ของ NPC # จะใส่เป็น mp_m_freemode_01 หรือ mp_f_freemode_01 ก็ได้
			heading = 343.95,						-- จะให้ NPC หันไปทางไหน
			Animation = { -- ใส่ท่าทางให้ NPC
				Scenario = false,
				AnimationDirect = "anim@amb@nightclub@peds@",
				AnimationScene = "rcmme_amanda1_stand_loop_cop",
			},
			Cloth = {
				face1 =                      0,        --   หน้าตา
				skin =                       0,        --   สีผิว
				wrinkles =                   0,        --   ริ้วรอย
				wrinkle_thickness =          0,        --   ความหนาของริ้วรอย
				beard_1 =                    0,        --   เครา
				beard_2 =                    0,        --   ขนาดเครา
				beard_3 =                    0,        --   สีเครา 1
				beard_4 =                    0,        --   สีเครา 2
				hair_1 =                     0,        --   ทรงผม 1
				hair_2 =                     0,        --   ทรงผม 2
				hair_color_1 =               0,        --   สีผม 1
				hair_color_2 =               0,        --   สีผม 2
				eye_color =                  0,        --   สีตา
				eyebrow_type =               0,        --   คิ้ว
				eyebrow_size =               0,        --   ขนาดคิ้ว
				eyebrow_color_1 =            0,        --   สีคิ้ว 1
				eyebrow_color_2 =            0,        --   สีคิ้ว 2
				makeup_type =                0,        --   เมคอัพ
				makeup_thickness =           0,        --   ความหนาเมคอัพ
				makeup_color_1 =             0,        --   สีเมคอัพ 1
				makeup_color_2 =             0,        --   สีเมคอัพ 2
				lipstick_type =              0,        --   ลิปสติก
				lipstick_thickness =         0,        --   ความหนาลิปสติก
				lipstick_color_1 =           0,        --   สีลิปสติก 1
				lipstick_color_2 =           0,        --   สีลิปสติก 2
				ears_1 =                    -1,        --   อุปกรณ์เสริมหู
				ears_2 =                     0,        --   สีอุปกรณ์เสริมหู
				tshirt_1 =                   0,        --   เสื้อด้านใน
				tshirt_2 =                   0,        --   สีเสื้อด้านใน
				torso_1 =                    0,        --   เสื้อนอก
				torso_2 =                    0,        --   สีเสื้อนอก
				decals_1 =                   0,        --   สติ๊กเกอร์ 1
				decals_2 =                   0,        --   สติ๊กเกอร์ 2
				arms =                       0,        --   แขน/ถุงมือ
				arms_2 =                     0,        --   สีถุงมือ
				pants_1 =                    0,        --   กางเกง                                    
				pants_2 =                    0,        --   สีกางเกง
				shoes_1 =                    0,        --   รองเท้า
				shoes_2 =                    2,        --   สีรองเท้า
				mask_1 =                     0,        --   หน้ากาก
				mask_2 =                     0,        --   สีหน้ากาก
				bproof_1 =                   0,        --   เสื้อเกาะ
				bproof_2 =                   0,        --   สีเสื้อเกาะ
				chain_1 =                    0,        --   สร้อยคอ
				chain_2 =                    0,        --   ขนหน้าอก
				helmet_1 =                  -1,        --   หมวก
				helmet_2 =                   0,        --   สีหมวก
				watches_1 =                  0,        --   นาฬิกาข้อมือ
				watches_2 =                  0,        --   สีนาฬิกาข้อมือ
				bracelets_1 =                0,        --   กุญแจมือ 1
				bracelets_2 =                0,        --   กุญแจมือ 2
				glasses_1 =                  0,        --   แว่น 1
				glasses_2 =                  0,        --   แว่น 2
				bags_1 =                     0,        --   กระเป๋า
				bags_2 =                     0,        --   สีกระเป๋า
				blemishes =                  0,        --   สิว
				blemishes_size=              0,        --   ความหนาของสิว
				ageing =                     0,        --   ริ้วรอย
				ageing_1 =                   0,        --   ความหนาของริ้วรอย
				blush =                      0,        --   หน้าแดง
				blush_1 =                    0,        --   บลัชออนหนา
				blush_color =                0,        --   สีบลัช
				complexion =                 0,        --   ผิว
				complexion_1 =               0,        --   ความหนาของผิว
				sun =                        0,        --   หน้าหมองคล่ำ
				sun_1 =                      0,        --   ความหนาหน้าหมองคล่ำ
				freckles =                   0,        --   freckles
				freckles_1 =                 0,        --   freckles thickness
				chest_hair =                 0,        --   ขนหน้าอก
				chest_hair_1 =               0,        --   หน้าอกผมหนา
				chest_color =                0,        --   สีขน
				bodyb =                      0,        --   ร่างกายเป็นสิว
				bodyb_size =                 0,        --   ความหนาของร่างกายทำให้เป็นสิว

				collection = "mpbiker_overlays",     --รอยสัก collection
				nameHash = "MP_MP_Biker_Tat_009_M",  --รอยสัก nameHash
			}
		},
	},


}



