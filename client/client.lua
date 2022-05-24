local sharedItems = exports['qbr-core']:GetItems()

-- gold clam 1
Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('goldclaim1', vector3(-2156.744, 538.26055, 116.97595), 0xF3830D8E, 'Check for Gold', { -- [J]
		type = 'client',
		event = 'rsg_goldrush:client:goldclaim1',
	})
end)

-- gold clam 2
Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('goldclaim2', vector3(601.88073, 2047.6282, 213.17745), 0xF3830D8E, 'Check for Gold', { -- [J]
		type = 'client',
		event = 'rsg_goldrush:client:goldclaim2',
	})
end)

-- gold clam 3
Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('goldclaim3', vector3(2369.4924, 1081.9393, 84.22956), 0xF3830D8E, 'Check for Gold', { -- [J]
		type = 'client',
		event = 'rsg_goldrush:client:goldclaim3',
	})
end)

-- goldcheck claim 1
RegisterNetEvent("rsg_goldrush:client:goldclaim1")
AddEventHandler("rsg_goldrush:client:goldclaim1", function()
	exports['qbr-core']:TriggerCallback('QBCore:HasItem', function(hasItem) 
		if hasItem and then
			local player = PlayerPedId()
			TaskStartScenarioInPlace(player, `WORLD_HUMAN_BUCKET_POUR_LOW`, 0, true)
			Wait(8000)
			ClearPedTasks(player)
			SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
			exports['qbr-core']:Progressbar("check_for_gold", "Checking for Gold..", 30000, false, true, {
				disableMovement = true,
				disableCarMovement = false,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				TriggerServerEvent('rsg_goldrush::server:reward')
			end)
		else
			exports['rsg_notify']:DisplayNotification('you do not hold the lease to this claim!', 5000)
		end
	end, { ['claimlease1'] = 1 })
end)

-- goldcheck claim 2
RegisterNetEvent("rsg_goldrush:client:goldclaim2")
AddEventHandler("rsg_goldrush:client:goldclaim2", function()
	exports['qbr-core']:TriggerCallback('QBCore:HasItem', function(hasItem) 
		if hasItem then
			local player = PlayerPedId()
			TaskStartScenarioInPlace(player, `WORLD_HUMAN_BUCKET_POUR_LOW`, 0, true)
			Wait(8000)
			ClearPedTasks(player)
			SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
			exports['qbr-core']:Progressbar("check_for_gold", "Checking for Gold..", 30000, false, true, {
				disableMovement = true,
				disableCarMovement = false,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				TriggerServerEvent('rsg_goldrush::server:reward')
			end)
		else
			exports['rsg_notify']:DisplayNotification('you do not hold the lease to this claim!', 5000)
		end
	end, { ['claimlease2'] = 1 })
end)

-- goldcheck claim 3
RegisterNetEvent("rsg_goldrush:client:goldclaim3")
AddEventHandler("rsg_goldrush:client:goldclaim3", function()
	exports['qbr-core']:TriggerCallback('QBCore:HasItem', function(hasItem) 
		if hasItem then
			local player = PlayerPedId()
			TaskStartScenarioInPlace(player, `WORLD_HUMAN_BUCKET_POUR_LOW`, 0, true)
			Wait(8000)
			ClearPedTasks(player)
			SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
			exports['qbr-core']:Progressbar("check_for_gold", "Checking for Gold..", 30000, false, true, {
				disableMovement = true,
				disableCarMovement = false,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				TriggerServerEvent('rsg_goldrush::server:reward')
			end)
		else
			exports['rsg_notify']:DisplayNotification('you do not hold the lease to this claim!', 5000)
		end
	end, { ['claimlease3'] = 1 })
end)

-- goto gold claim 1
RegisterNetEvent('rsg_goldrush:client:gotoclaim1')
AddEventHandler('rsg_goldrush:client:gotoclaim1', function()
	StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
	AddPointToGpsMultiRoute(-2156.744, 538.26055, 116.97595)
	SetGpsMultiRouteRender(true)
end)

-- goto gold claim 2
RegisterNetEvent('rsg_goldrush:client:gotoclaim2')
AddEventHandler('rsg_goldrush:client:gotoclaim2', function()
	StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
	AddPointToGpsMultiRoute(601.88073, 2047.6282, 213.17745)
	SetGpsMultiRouteRender(true)
end)

-- goto gold claim 3
RegisterNetEvent('rsg_goldrush:client:gotoclaim3')
AddEventHandler('rsg_goldrush:client:gotoclaim3', function()
	StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
	AddPointToGpsMultiRoute(2369.4924, 1081.9393, 84.22956)
	SetGpsMultiRouteRender(true)
end)