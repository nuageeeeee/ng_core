function charCreator()
    local uidP = NX.Player.GetValue('uid')
    local IndexList = 1
    local charcrea = RageUI.CreateMenu("Creation personnage", "uid : " .. uidP .. " Prenom :" .. identity.firstName)
    RageUI.Visible(charcrea, not RageUI.Visible(charcrea))
    while charcrea do
        Citizen.Wait(0)
        RageUI.IsVisible(charcrea, true, true, true, function()
            RageUI.List("Tete : ", {"Tete1", "Tete2"}, IndexList, nil, {}, true,
                function(Hovered, Active, Selected, Index)
                end, function(Index, Items)
                    IndexList = index
                    print(index)
                end)
        end, function()
        end)

        if not RageUI.Visible(charcrea) then
            charcrea = RMenu:DeleteType("Titre", true)
        end
    end
end