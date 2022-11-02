local NX = exports['NX']:useServer()

RegisterNetEvent('charAccept')
AddEventHandler('charAccept', function(Identity)
    local nxPlayer = NX.Players.Get(1)
    local FirstName = Identity.FirstName
    nxPlayer.setCharInfoKey(firstname, 'deb')
end)