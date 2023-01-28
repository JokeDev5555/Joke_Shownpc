ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		ESX = exports['es_extended']:getSharedObject(function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	Citizen.Wait(5000)
end)

-- Create NPC
Citizen.CreateThread(function()
	for k,v in pairs(Config.Npc) do

	end
	
	for k,v in pairs(Config.Npc) do
		if Config.Npc ~= nil then 
			local x,y,z = table.unpack(v.coords)
			RequestModel(GetHashKey(v.NPC.Model))
			while not HasModelLoaded(GetHashKey(v.NPC.Model)) do
				Wait(1)
			end

			local playerPed = CreatePed(4, v.NPC.Model, x, y, z - 1.0, v.NPC.heading, false, true)

			FreezeEntityPosition(playerPed, true)
			SetEntityInvincible(playerPed, true)
			SetBlockingOfNonTemporaryEvents(playerPed, true)
			if v.NPC.Animation then
				if v.NPC.Animation.Scenario then
					TaskStartScenarioInPlace(playerPed, v.NPC.Animation.AnimationScene, 0, false)
					else
					RequestAnimDict(v.NPC.Animation.AnimationDirect)
					while (not HasAnimDictLoaded(v.NPC.Animation.AnimationDirect)) do Citizen.Wait(0) end
					Wait(100)
					TaskPlayAnim(playerPed, v.NPC.Animation.AnimationDirect, v.NPC.Animation.AnimationScene, 20.0, -20.0, -1, 1, 0, false, false, false)						
				end
			end

			SetPedHeadBlendData			(playerPed, v.NPC.Cloth.face1, v.NPC.Cloth.face1, v.NPC.Cloth.face1, v.NPC.Cloth.skin, v.NPC.Cloth.skin, v.NPC.Cloth.skin, 1.0, 1.0, 1.0, true)
			SetPedEyeColor				(playerPed,			v.NPC.Cloth.eye_color, 0, 1)												-- Eyes color
			SetPedComponentVariation	(playerPed, 2,		v.NPC.Cloth.hair_1,			v.NPC.Cloth.hair_2, 2)						-- Hair
			SetPedHairColor				(playerPed,			v.NPC.Cloth.hair_color_1,		v.NPC.Cloth.hair_color_2)				-- Hair Color
			SetPedComponentVariation    (playerPed, 11,        v.NPC.Cloth.torso_1,            v.NPC.Cloth.torso_2, 2)                    -- torso parts
			SetPedComponentVariation    (playerPed, 8,        v.NPC.Cloth.tshirt_1,            v.NPC.Cloth.tshirt_2, 2)					-- Tshirt
			SetPedComponentVariation	(playerPed, 3,		v.NPC.Cloth.arms,				v.NPC.Cloth.arms_2, 2)						-- Amrs
			SetPedComponentVariation	(playerPed, 4,		v.NPC.Cloth.pants_1,			v.NPC.Cloth.pants_2, 2)					-- pants
			SetPedComponentVariation	(playerPed, 6,		v.NPC.Cloth.shoes_1,			v.NPC.Cloth.shoes_2, 2)					-- shoes
			SetPedComponentVariation	(playerPed, 10,		v.NPC.Cloth.decals_1,			v.NPC.Cloth.decals_2, 2)					-- decals
			SetPedComponentVariation	(playerPed, 1,		v.NPC.Cloth.mask_1,			v.NPC.Cloth.mask_2, 2)				
			SetPedComponentVariation	(playerPed, 9,		v.NPC.Cloth.bproof_1,			v.NPC.Cloth.bproof_2, 2)			
			SetPedComponentVariation	(playerPed, 7,		v.NPC.Cloth.chain_1,			v.NPC.Cloth.chain_2, 2)				
			SetPedComponentVariation	(playerPed, 5,		v.NPC.Cloth.bags_1,			v.NPC.Cloth.bags_2, 2)
			SetPedPropIndex			(playerPed, 2,		v.NPC.Cloth.ears_1,			v.NPC.Cloth.ears_2, 2)						-- Ears Accessories					
			SetPedPropIndex			(playerPed, 0,		v.NPC.Cloth.helmet_1,			v.NPC.Cloth.helmet_2, 2)			
			SetPedPropIndex			(playerPed, 1,		v.NPC.Cloth.glasses_1,			v.NPC.Cloth.glasses_2, 2)			
			SetPedPropIndex			(playerPed, 6,		v.NPC.Cloth.watches_1,			v.NPC.Cloth.watches_2, 2)				
			SetPedPropIndex			(playerPed, 7,		v.NPC.Cloth.bracelets_1,		v.NPC.Cloth.bracelets_2)			
			SetPedHeadOverlay			(playerPed, 1,		v.NPC.Cloth.beard_1,			(v.NPC.Cloth.beard_2 / 10) + 0.0)	
			SetPedHeadOverlayColor		(playerPed, 1, 1,	v.NPC.Cloth.beard_3,			v.NPC.Cloth.beard_4)						-- Beard Color
			SetPedHeadOverlay			(playerPed, 2,		v.NPC.Cloth.eyebrow_type,		(v.NPC.Cloth.eyebrow_size / 10) + 0.0)		-- Eyebrows + opacity
			SetPedHeadOverlayColor		(playerPed, 2, 1,	v.NPC.Cloth.eyebrow_color_1,		v.NPC.Cloth.eyebrow_color_2)					-- Eyebrows Color
			SetPedHeadOverlay			(playerPed, 4,		v.NPC.Cloth.makeup_type,			(v.NPC.Cloth.makeup_thickness / 10) + 0.0)			-- Makeup + opacity
			SetPedHeadOverlay			(playerPed, 8,		v.NPC.Cloth.lipstick_type,		(v.NPC.Cloth.lipstick_thickness / 10) + 0.0)		-- Lipstick + opacity
			SetPedHeadOverlay			(playerPed, 5,		v.NPC.Cloth.blush,			(v.NPC.Cloth.blush_1 / 10) + 0.0)			-- Blush + opacity
			SetPedHeadOverlay			(playerPed, 6,		v.NPC.Cloth.complexion,		(v.NPC.Cloth.complexion_1 / 10) + 0.0)		-- Complexion + opacity
			SetPedHeadOverlay			(playerPed, 7,		v.NPC.Cloth.sun,				(v.NPC.Cloth.sun_1 / 10) + 0.0)			-- Sun Damage + opacity
			SetPedHeadOverlay			(playerPed, 9,		v.NPC.Cloth.freckles,			(v.NPC.Cloth.freckles_1 / 10) + 0.0)			-- Moles/Freckles + opacity
			SetPedHeadOverlay			(playerPed, 10,		v.NPC.Cloth.chest_hair,			(v.NPC.Cloth.chest_hair_1 / 10) + 0.0)			-- Chest Hair + opacity
			SetPedHeadOverlay			(playerPed, 11,		v.NPC.Cloth.bodyb,			(v.NPC.Cloth.bodyb_size / 10) + 0.0)			-- Body Blemishes + opacity
			SetPedHeadOverlayColor		(playerPed, 10, 1,	v.NPC.Cloth.chest_color)														-- Torso Color
			SetPedHeadOverlayColor		(playerPed, 4, 1,	v.NPC.Cloth.makeup_color_1,			v.NPC.Cloth.makeup_color_2)						-- Makeup Color
			SetPedHeadOverlayColor		(playerPed, 5, 2,	v.NPC.Cloth.blush_color)														-- Blush Color
			SetPedHeadOverlayColor		(playerPed, 8, 1,	v.NPC.Cloth.lipstick_color_1,		v.NPC.Cloth.lipstick_color_2)					-- Lipstick Color
			ApplyPedOverlay             (playerPed, GetHashKey(v.NPC.collection), GetHashKey(v.NPC.nameHash))
		end
	end
end)

RegisterFontFile('font4thai')
fontId = RegisterFontId('font4thai')

Citizen.CreateThread(function()
	Holograms()
	
end)
local function RGBRainbow( frequency )
	local result = {}
	local curtime = GetGameTimer() / 500
	result.r = math.floor( math.sin( curtime * frequency + 10 ) * 127 + 128 )
	result.g = math.floor( math.sin( curtime * frequency + 12 ) * 127 + 128 )
	result.b = math.floor( math.sin( curtime * frequency + 14 ) * 127 + 128 )
	return result
end

function Holograms()
		while true do
			Citizen.Wait(0)	

		if GetDistanceBetweenCoords(1737.53, 3287.2, 42.14, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then		
			Draw3DText(1737.53, 3287.2, 41.64 -1.400, "~w~Hall Of Frame~y~", fontId, 0.1, 0.1)		
		end

		-- if GetDistanceBetweenCoords(1737.53, 3287.2, 42.14, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then		
		--     Draw3DText(1737.53, 3287.2, 41.64 -1.400, "~w~Hall Of Frame~y~", fontId, 0.1, 0.1)		
		-- end
			-- ตัวอย่างการใส่ข้อความเพิ่มจุดอื่น
		--   if GetDistanceBetweenCoords(1737.53, 3287.2, 42.14, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then		
		--			Draw3DText(670.87,570.31,129.90 -1.400, "👻", fontId, 0.2, 0.2)
		--			Draw3DText(1737.53, 3287.2, 41.64 -1.400, "~w~Hall Of Frame~y~", fontId, 0.1, 0.1)		
		--			Draw3DText(670.87,570.31,129.15 -1.400, "~s~ติดต่อ Admin เท่านั้นห้ามทัก Developer~y~", fontId, 0.1, 0.1)
		--   end
	end    
end

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
	local scale = (1/dist)*20
	local fov = (1/GetGameplayCamFov())*100
	local scale = scale*fov   
	local ra = RGBRainbow(1.0)
	SetTextScale(scaleX*scale, scaleY*scale)
	SetTextFont(fontId)
	SetTextProportional(1)
	SetTextColour(ra.r, ra.g, ra.b, 255)		-- You can change the text color here
	SetTextDropshadow(1, 1, 1, 1, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(textInput)
	SetDrawOrigin(x,y,z+2, 0)
	DrawText(0.0, 0.0)
	ClearDrawOrigin()
end