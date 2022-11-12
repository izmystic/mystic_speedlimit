local speedlimit = 420

CreateThread(function()
    while true do
        Wait(500)
        local player = PlayerPedId()
        local playerloc = GetEntityCoords(player)
        local streethash = GetStreetNameAtCoord(playerloc.x, playerloc.y, playerloc.z)
        local street = GetStreetNameFromHashKey(streethash)
        if IsPedInAnyVehicle(player) and not IsPauseMenuActive() then
            speedlimit = Config.SpeedLimits[street]
            SendNUIMessage({action = "show", speed = speedlimit})
        else
            SendNUIMessage({action = "hide"})
        end
    end
end)