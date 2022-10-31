-- NX player decla
local NX = exports['NX']:useServer()
-- NetEvent
RegisterNetEvent('saveAll')
RegisterNetEvent('playerDroppedSave')
-- saveAll loop
AddEventHandler('saveAll', function()
    NX.Players.SaveAll()
    print('succesful')
end)

AddEventHandler('playerDroppedSave', function()
    local nxPlayer = NX.Players.Get(source)
    nxPlayer.Save()
end)
