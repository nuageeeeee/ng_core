local NX = exports['NX']:useServer()

NX.Misc.RegisterUsableItem('medkit', function(source)

    local nxPlayer = NX.Players.Get(source)
    local item = nxPlayer.HasItem("medkit")

    if(item) then
        nxPlayer.RemoveItem('medkit', 1)
    end
end)