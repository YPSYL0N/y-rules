AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

function EnableGui(state)
	SetNuiFocus(state, state)
	guiEnabled = state

	SendNUIMessage({
		type = "enableui",
		enable = state
	})
end


local hrac = GetPlayerById()
RegisterNUICallback('odpojitse', function(data, cb)
    DropPlayer(hrac)
end)

RegisterNUICallback('souhlasim', function(data, cb)
    SetNuiFocus(false, false)
end)
