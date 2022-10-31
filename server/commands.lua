local NX = exports['NX']:useServer()

NX.Misc.AddCommand('car', function(source, args)
    TriggerClientEvent('dv', source)
    TriggerClientEvent('loading', source)
    Citizen.Wait(1000)
    TriggerClientEvent('car', source, args[1])
end, {"admin"})

NX.Misc.AddCommand('dv', function(source, args)
    TriggerClientEvent('dv', source)
end, {"admin"})

NX.Misc.AddCommand('giveitem', function(source, args)

    local nxPlayer = NX.Players.Get(source)
    nxPlayer.AddItem(args[1], args[2])
    print('Nice')
end, {"admin"})

NX.Misc.AddCommand('checkinv', function(source, args)

    local nxPlayer = NX.Players.Get(source)
    print(json.encode(nxPlayer.GetInventory()))
end, {"admin"})

NX.Misc.AddCommand('repair', function(source, args)
    TriggerClientEvent('repair', source)
    local nxPlayer = NX.Players.Get(source)

nxPlayer.SetJob('police', 'officer', 1)
end, {"admin"})

NX.Misc.AddCommand('revive', function(source, args)
    TriggerClientEvent('revive', source, args[1])
end, {"admin"})

NX.Misc.AddCommand('save', function(source, args)
    local nxPlayer = NX.Players.Get(source)
    NX.Players.SaveAll()
end, {"user", "admin"})