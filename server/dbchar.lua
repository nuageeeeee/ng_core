local NX = exports['NX']:useServer()

RegisterServerEvent('charAccept')
AddEventHandler('charAccept', function(Identity)
    local nxPlayer = NX.Players.Get(1)

    MySql.execute(UPDATE `nx_users` SET `charinfo` = 'newvalue2w')

end)