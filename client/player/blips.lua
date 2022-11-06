local blips = {
    -- {title="", colour=, id=, x=, y=, z=},

    {title="Los Santos Police Departemen.", colour=26, id=60, x = 434.14, y = -981.89, z = 30.27},
    {title="Gouvernement", colour=0, id=419, x = -429.43, y = 1109.46, z = 327.68},
    {title="~g~PillBox Medical Center", colour=2, id=61, x = 291.91, y = -593.02, z = 43.13},

 }

  
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)