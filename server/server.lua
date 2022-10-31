-- NX player decla
local NX = exports['NX']:useServer()
-- NetEvent
RegisterNetEvent('saveAll')
-- saveAll loop
AddEventHandler('saveAll', function()
    NX.Players.SaveAll()
end)
