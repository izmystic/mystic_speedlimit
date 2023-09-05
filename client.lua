local show, sleep, speedlimit
CreateThread(function()
  while true do
    local vehicle = cache.vehicle
    if vehicle then
      sleep = 10
      show = true
      local player = cache.ped
      local coords = GetEntityCoords(player)
      local street = GetStreetNameFromHashKey(GetStreetNameAtCoord(coords.x, coords.y, coords.z))
      speedlimit = Config.SpeedLimits[street]
      if IsPauseMenuActive() then
        show = false
      end
      SendNUIMessage({
        action = "updateHud",
        show = show,
        speedlimit = speedlimit,
      })
    else
      SendNUIMessage({ -- theres probably a beter way to hide it when not in a vehicle, but its functional
        action = "updateHud",
        show = false,
      })
    end
    sleep = 500
    Wait(sleep)
  end
end)
