-- Enjoy! Created and Developed by Lance Good.
-- Don't fuck up this shit or you could die from dying!
-- Also if an element sees this I would like to please get my Testing Role back as I gained it before donating and lost it after stopping donations.
-- Also please don't put this in #dontbelikethis or I'll double post it, i've done it to that weiner Smallo before so test me...

RegisterCommand("zonecleaner", function(source, args, rawCommand)
	local radius = args[1]
	local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
	TriggerEvent('zc:clearZone', x, y, z, radius)
end, false) -- false = everyone can use this (not recommended)

RegisterNetEvent('zc:clearZone')
AddEventHandler('zc:clearZone', function(x, y, z, radius)
	local fRadius = radius + 0.0
	ClearAreaOfObjects(x, y, z, fRadius, 1)
	ClearAreaOfCops(x, y, z, fRadius, 1)
	ClearAreaOfPeds(x, y, z, fRadius, 1)
	ClearAreaOfProjectiles(x, y, z, fRadius, 1)
	ClearAreaOfVehicles(x, y, z, fRadius, false, false, false, false, false)
	TriggerEvent('chatMessage', "^1[Zone Cleaner]:^2 Cleared all vehicles within ".. radius .." meters!")
end)