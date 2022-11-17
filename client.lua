local speedlimit = 420

CreateThread(function()
    while true do
        local sleep = 1000
        local player = PlayerPedId()
        if IsPedInAnyVehicle(player) and not IsPauseMenuActive() then
            sleep = 500
            local playerloc = GetEntityCoords(player)
            local streethash = GetStreetNameAtCoord(playerloc.x, playerloc.y, playerloc.z)
            local street = GetStreetNameFromHashKey(streethash)
            speedlimit = Config.SpeedLimits[street]
            SendNUIMessage({ action = "show", speed = speedlimit })
        else
            sleep = 1000
            SendNUIMessage({ action = "hide" })
        end
        Wait(sleep)
    end
end)
