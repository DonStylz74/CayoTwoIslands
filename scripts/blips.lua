
local blips = {

	-- Airports --
	{title="Airport", colour=3, id=90, x=-1045.7395, y=-2751.3999, z=21.3634, did=4, scale=0.5},  --  LSIA
	{title="Airport", colour=3, id=90, x=-2279.8914, y=3159.7019, z=21.3634, did=4, scale=0.5},  --  Zancudo
	{title="Airport", colour=3, id=90, x= 1072.73, y= 3052.01, z= 21.3634, did=4, scale=0.5},  --  Sandy
	{title="Airport", colour=3, id=90, x=2118.2241, y=4803.0083, z=21.3634, did=4, scale=0.5},  --  Grapeseed
	{title="Airport", colour=3, id=90, x=-354.1873, y=6448.7852, z=21.3634, did=4, scale=0.5},  --  Paleto Bay
	{title="Airport", colour=3, id=90, x=4454.0234, y=-4509.1128, z=21.3634, did=4, scale=0.5},  --  Cayo island


	-- Cayo Perico Island Blips --

	-- Island Beach Party
	--{title="Island Beach Party", colour=23, id=766, x = 4918.11, y = -4906.8, z = 3.44},

	-- Island Weed Farm
	--{title="Island Weed Farm", colour=25, id=496, x=5319.28, y=-5248.54, z=32.58},


	-- Island Helipad 1 --
	--{title="Island Helipad", colour=26, id=542, x= 4890.52, y= -5736.66, z= 26.35},


	-- Island Mansion --
	--{title="Island Mansion", colour=30, id=40, x=5009.41, y=-5749.76, z=32.85},

	-- Island House --
	--{title="Island House", colour=7, id=40, x=5006.63, y=-5787.81, z=22.56},
	--{title="Island House", colour=7, id=40, x=5080.4, y=-5756.1, z=21.62},
	--{title="Island House", colour=7, id=40, x=5026.97, y=-5735.91, z=17.87},

	-- Island Jail --
	{title="Alkatraz Island", colour=30, id=542, x=-3564.3545, y=-3969.2998, z=57.5198, did=5, scale=0.5},
	
}

Citizen.CreateThread(function()

	for _, info in pairs(blips) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, info.did)
		SetBlipScale(info.blip, 0.5)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(info.title)
		EndTextCommandSetBlipName(info.blip)
	end
end)
